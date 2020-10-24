#include "aes256cbccodec.h"
#include "shadowhttpclient.h"
#include "tunnel.h"
#include <malloc.h>
#include <memory>
#include <openssl/aes.h>
#include <openssl/des.h>
#include <stdio.h>
#include <sys/resource.h>
#include <unistd.h>

int main(int argc, char* argv[]) {

	muduo::Logger::setLogLevel(muduo::Logger::DEBUG);

	std::shared_ptr< ShadowhttpClient > shadowhttpclient =
		std::make_shared< ShadowhttpClient >(9797, "127.0.0.1", 9090);
	shadowhttpclient->SetPassword("aespasswd");
	shadowhttpclient->Start();
}
