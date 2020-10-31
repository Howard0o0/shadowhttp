#include "aes256cbccodec.h"
#include "shadowhttpserver.h"
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

	std::shared_ptr< ShadowhttpServer > shadowhttpserver =
		std::make_shared< ShadowhttpServer >(9090);
	shadowhttpserver->SetPassword("aespasswd");
	shadowhttpserver->Start();
}
