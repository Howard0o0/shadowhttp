#ifndef SHADOWHTTPCLIENT_H
#define SHADOWHTTPCLIENT_H

#include "aescodec.h"
#include "httpmessagecodec.h"
#include "muduo/net/Callbacks.h"
#include "tunnel.h"
#include <malloc.h>
#include <stdio.h>
#include <sys/resource.h>
#include <unistd.h>

using namespace nethelper;

class ShadowhttpClient {
    public:
	ShadowhttpClient(uint16_t listen_port, const std::string& server_ip, uint16_t server_port);
	void Start();
	void SetPassword(const std::string& password);

    private:
	muduo::net::EventLoop			 eventloop_;
	std::map< std::string, TunnelPtr >	 tunnels_;
	std::shared_ptr< muduo::net::TcpServer > tcpserver_;
	HttpMessageCodec			 codec_;
	std::shared_ptr< AESCodec >		 aes_codec_;
	SockAddress				 server_address_;

	void OnServerConnection(const muduo::net::TcpConnectionPtr& conn);
	void OnServerMessage(const muduo::net::TcpConnectionPtr& conn, muduo::net::Buffer* buf,
			     muduo::Timestamp);
	void OnClientMessage(const muduo::net::TcpConnectionPtr& server_conn,
			     const muduo::net::TcpConnectionPtr& client_conn,
			     const std::string&			 message);
	void OnTunnelBuilt(const muduo::net::TcpConnectionPtr& server_conn,
			   const muduo::net::TcpConnectionPtr& client_conn,
			   const boost::any&		       context);
};

#endif