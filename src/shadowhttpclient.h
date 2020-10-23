#ifndef SHADOWHTTPCLIENT_H
#define SHADOWHTTPCLIENT_H

#include "httpmessagecodec.h"
#include "muduo/net/Callbacks.h"
#include "tunnel.h"
#include <malloc.h>
#include <stdio.h>
#include <sys/resource.h>
#include <unistd.h>

class ShadowhttpClient {
    public:
	ShadowhttpClient(uint16_t listen_port);
	void Start();

    private:
	muduo::net::EventLoop			 eventloop_;
	std::map< std::string, TunnelPtr >	 tunnels_;
	std::shared_ptr< muduo::net::TcpServer > tcpserver_;
	HttpMessageCodec			 codec_;

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
};

#endif