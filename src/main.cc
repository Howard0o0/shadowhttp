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

	// std::shared_ptr< ShadowhttpServer > shadowhttpserver =
	// 	std::make_shared< ShadowhttpServer >(9090);
	// shadowhttpserver->Start();

	std::string plain_text	= "abcdefghijklmnaaaaaaaaaaaaaaaaaaaaaaaaa";
	std::string key		= "1234567890";
	AESCodec*   aes_codec	= new AES256cbcCodec(key);
	std::string cipher_text = aes_codec->Encrype(plain_text);

	LOG_DEBUG << "plain_text : " << aes_codec->Decrype(cipher_text);
}
