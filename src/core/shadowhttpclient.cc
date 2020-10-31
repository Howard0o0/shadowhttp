#include "shadowhttpclient.h"
#include "aes256cbccodec.h"
#include "muduo/net/Callbacks.h"
#include "muduo/net/TcpConnection.h"
#include "sockettool.h"
#include "stringtool.h"
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

ShadowhttpClient::ShadowhttpClient(uint16_t listen_port, const std::string& server_ip,
				   uint16_t server_port)
	: server_address_(server_ip, server_port) {
	this->tcpserver_ = std::make_shared< muduo::net::TcpServer >(
		&this->eventloop_, muduo::net::InetAddress(listen_port), "shadowhttpclient");
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
		conn->stopRead();
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

	std::string message = buf->retrieveAllAsString();
	LOG_DEBUG << "receive message from proxy client : \r\n" << message;

	if (!conn->getContext().empty()) {
		const muduo::net::TcpConnectionPtr& clientConn =
			boost::any_cast< const muduo::net::TcpConnectionPtr& >(conn->getContext());
		std::string enc_message = this->aes_codec_->Encrype(message);
		// std::string enc_message = message;
		clientConn->send(enc_message);
		LOG_WARN << "forward to sh-server done , len : " << enc_message.size();
	}
}

void ShadowhttpClient::OnClientMessage(const muduo::net::TcpConnectionPtr& server_conn,
				       const muduo::net::TcpConnectionPtr& client_conn,
				       const std::string&		   message) {

	std::string dec_message = this->aes_codec_->Decrype(message);
	// std::string dec_message = message;
	LOG_DEBUG << "receive message from sh-sever : \r\n" << dec_message;
	server_conn->send(dec_message);
	LOG_INFO << "forward to proxy client done";
}

void ShadowhttpClient::OnTunnelBuilt(const muduo::net::TcpConnectionPtr& server_conn,
				     const muduo::net::TcpConnectionPtr& client_conn,
				     const boost::any&			 context) {
	const std::string& message     = boost::any_cast< const std::string& >(context);
	std::string	   enc_message = this->aes_codec_->Encrype(message);
	// std::string enc_message = message;
	client_conn->send(enc_message);
	LOG_INFO << "forward to sh-server done";
}
/* end of private methods */