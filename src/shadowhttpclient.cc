#include "shadowhttpclient.h"
#include "muduo/net/Callbacks.h"
#include "sockettool.h"
#include <memory>
#include <openssl/des.h>

using namespace nethelper;

/* pubic methods */

void ShadowhttpClient::Start() {
	this->tcpserver_->start();
	this->eventloop_.loop();
}

/* end of pubic methods */

/* private methods */

ShadowhttpClient::ShadowhttpClient(uint16_t listen_port) {
	this->tcpserver_ = std::make_shared< muduo::net::TcpServer >(
		&this->eventloop_, muduo::net::InetAddress(listen_port), "shadowhttp");
	using std::placeholders::_1;
	using std::placeholders::_2;
	using std::placeholders::_3;
	this->tcpserver_->setConnectionCallback(
		std::bind(&ShadowhttpClient::OnServerConnection, this, _1));
	this->tcpserver_->setMessageCallback(
		std::bind(&ShadowhttpClient::OnServerMessage, this, _1, _2, _3));
}

void ShadowhttpClient::OnServerConnection(const muduo::net::TcpConnectionPtr& conn) {
	LOG_INFO << conn->name() << (conn->connected() ? " UP" : " DOWN");
	if (conn->connected()) {
		conn->setTcpNoDelay(true);
	}
	else {
		std::map< std::string, TunnelPtr >::iterator it = this->tunnels_.find(conn->name());
		if (it != this->tunnels_.end()) {
			it->second->disconnect();
			this->tunnels_.erase(it);
		}
	}
}
void ShadowhttpClient::OnServerMessage(const muduo::net::TcpConnectionPtr& conn,
				       muduo::net::Buffer*		   buf, muduo::Timestamp) {

	std::string message = buf->retrieveAllAsString();
	this->HandleHttpProxyMessage(conn, message);
}

void ShadowhttpClient::HandleHttpProxyMessage(const muduo::net::TcpConnectionPtr& conn,
					      std::string&			  message) {
	LOG_DEBUG << "start handling proxy message";

	enum HttpProxyMessageType http_proxymessage_type =
		this->codec_.GetHttpProxyMessageType(message);

	if (this->tunnels_.find(conn->name()) == this->tunnels_.end()) {
		if (http_proxymessage_type == CONNECT || http_proxymessage_type == HTTPFORWARD) {
			SockAddress remote_addr = this->codec_.ScratchRemoteAddress(message);
			if (remote_addr.ip.empty())
				return;
			if (!SocketTool::IsIpv4address(remote_addr.ip))
				remote_addr.ip =
					SocketTool::GetIpv4addressByDomainName(remote_addr.ip);
			TunnelPtr tunnel = std::make_shared< Tunnel >(
				&this->eventloop_,
				muduo::net::InetAddress(remote_addr.ip, remote_addr.port), conn);
			using std::placeholders::_1;
			using std::placeholders::_2;
			using std::placeholders::_3;
			if (http_proxymessage_type == CONNECT) {
				tunnel->setTunnelBuiltCb(std::bind(
					&ShadowhttpClient::OnConnectTunnelBuilt, this, _1, _2, _3));
			}
			else {
				this->codec_.RefactorUrlpath(message);
				tunnel->setContext(message);
				tunnel->setTunnelBuiltCb(
					std::bind(&ShadowhttpClient::OnHttpforwardTunnelBuilt, this,
						  _1, _2, _3));
			}

			tunnel->setup();
			tunnel->connect();
			this->tunnels_[ conn->name() ] = tunnel;
			LOG_INFO << "built conn(" << conn->name() << ") tunnel";
		}
	}
	else if (!conn->getContext().empty()) {
		const muduo::net::TcpConnectionPtr& clientConn =
			boost::any_cast< const muduo::net::TcpConnectionPtr& >(conn->getContext());
		clientConn->send(message);
		LOG_INFO << "forward done";
	}
	else
		LOG_WARN << "can't find tunnel : " << conn->name();
}

void ShadowhttpClient::OnConnectTunnelBuilt(const muduo::net::TcpConnectionPtr& server_conn,
					    const muduo::net::TcpConnectionPtr& client_conn,
					    const boost::any&			context) {
	std::string connect_established = "HTTP/1.1 200 Connection "
					  "Established\r\n\r\n";
	server_conn->send(connect_established);
	LOG_INFO << "tunnel established";
}
void ShadowhttpClient::OnHttpforwardTunnelBuilt(const muduo::net::TcpConnectionPtr& server_conn,
						const muduo::net::TcpConnectionPtr& client_conn,
						const boost::any&		    context) {
	const std::string& message = boost::any_cast< const std::string& >(context);
	client_conn->send(message);
	LOG_INFO << "httpforward done";
}
/* end of private methods */