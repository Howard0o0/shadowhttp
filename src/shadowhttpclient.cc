#include "shadowhttpclient.h"
#include "aes256cbccodec.h"
#include "muduo/net/Callbacks.h"
#include "muduo/net/TcpConnection.h"
#include "sockettool.h"
#include <memory>
#include <openssl/des.h>


/* pubic methods */

void ShadowhttpClient::Start() {
	this->tcpserver_->start();
	this->eventloop_.loop();
}

void ShadowhttpClient::SetPassword(const std::string& password) {
	this->aes_codec_ = std::shared_ptr< AESCodec >(new AES256cbcCodec(password));
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
		/* connect to shadowhttp-server */
		TunnelPtr tunnel = std::make_shared< Tunnel >(
			&this->eventloop_,
			muduo::net::InetAddress(this->server_address_.ip,
						this->server_address_.port),
			conn);
		using std::placeholders::_1;
		using std::placeholders::_2;
		using std::placeholders::_3;
		tunnel->setOnTunnelClientMessageCb(
			std::bind(&ShadowhttpClient::OnClientMessage, this, _1, _2, _3));
		tunnel->setup();
		tunnel->connect();
		this->tunnels_[ conn->name() ] = tunnel;
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

	std::string message    = buf->retrieveAllAsString();
	std::string enc_mesage = this->aes_codec_->Encrype(message);
	if (conn->getContext().empty()) {
		LOG_WARN << "can't find tunnel : " << conn->name();
		return;
	}
	const muduo::net::TcpConnectionPtr& clientConn =
		boost::any_cast< const muduo::net::TcpConnectionPtr& >(conn->getContext());
	clientConn->send(buf);
}

void ShadowhttpClient::OnClientMessage(const muduo::net::TcpConnectionPtr& server_conn,
				       const muduo::net::TcpConnectionPtr& client_conn,
				       const std::string&		   message) {

	std::string dec_message = this->aes_codec_->Decrype(message);
	client_conn->send(dec_message);
	LOG_INFO << "httpforward done";
}
/* end of private methods */