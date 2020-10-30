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

	// std::string plain_text = "HTTP/1.1 200 Connection "
	// 			 "Established\r\n\r\n";
	// std::string    plain_text = "asdffffffffffffffffffffffffffffffffffffffffffffffxjciovoxc";
	// AES256cbcCodec aes256("aespasswd");
	// LOG_DEBUG << "plain_text : \r\n" << plain_text << "\r\nlen : " << plain_text.size();

	// std::string cipher_text = aes256.Encrype(plain_text);
	// LOG_DEBUG << "cipher_text : \r\n" << cipher_text << "\r\nlen : " << cipher_text.size();

	// plain_text = aes256.Decrype(cipher_text);
	// LOG_DEBUG << "plain_text : \r\n" << plain_text << "\r\nlen : " << plain_text.size();
}
