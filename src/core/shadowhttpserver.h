#ifndef SHADOWHTTPSERVER_H
#define SHADOWHTTPSERVER_H

#include "aes256cbccodec.h"
#include "httpmessagecodec.h"
#include "muduo/net/Callbacks.h"
#include "tunnel.h"
#include <malloc.h>
#include <stdio.h>
#include <sys/resource.h>
#include <unistd.h>

class ShadowhttpServer {
    public:
	ShadowhttpServer(uint16_t listen_port);
	void Start();
	void SetPassword(const std::string& password);

    private:
	muduo::net::EventLoop			 eventloop_;
	std::map< std::string, TunnelPtr >	 tunnels_;
	std::shared_ptr< muduo::net::TcpServer > tcpserver_;
	HttpMessageCodec			 codec_;
	std::shared_ptr< AESCodec >		 aes_codec_;

	void OnServerConnection(const muduo::net::TcpConnectionPtr& conn);
	void OnServerMessage(const muduo::net::TcpConnectionPtr& conn, muduo::net::Buffer* buf,
			     muduo::Timestamp);
	void HandleHttpProxyMessage(const muduo::net::TcpConnectionPtr& conn, std::string& message);
	void OnConnectTunnelBuilt(const muduo::net::TcpConnectionPtr& server_conn,
				  const muduo::net::TcpConnectionPtr& client_conn,
				  const boost::any&		      context);
	void OnHttpforwardTunnelBuilt(const muduo::net::TcpConnectionPtr& server_conn,
				      const muduo::net::TcpConnectionPtr& client_conn,
				      const boost::any&			  context);
	void OnClientMessage(const muduo::net::TcpConnectionPtr& server_conn,
			     const muduo::net::TcpConnectionPtr& client_conn,
			     const std::string&			 message);
};

#endif
