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

std::string RandomStr(int len) {
	std::string random_str;
	for (int i = 0; i < len; ++i)
		random_str.push_back(rand() % 255);
	return random_str;
}

bool TestAES(const std::string& plain_text) {
	AES256cbcCodec aes256("aespasswd");
	return plain_text == aes256.Decrype(aes256.Encrype(plain_text));
}

int main(int argc, char* argv[]) {

	muduo::Logger::setLogLevel(muduo::Logger::DEBUG);

	std::shared_ptr< ShadowhttpClient > shadowhttpclient =
		std::make_shared< ShadowhttpClient >(9797, "127.0.0.1", 9090);
	shadowhttpclient->SetPassword("aespasswd");
	shadowhttpclient->Start();

	// for (int len = 1; len < 10000; ++len) {
	// 	if (TestAES(RandomStr(len)) == false) {
	// 		LOG_ERROR << "error";
	// 		return 0;
	// 	}
	// }
	// LOG_INFO << "test done";
	// return 0;

	// std::string    plain_text = "1111222233334444";
	// AES256cbcCodec aes256("aespasswd");
	// LOG_DEBUG << "plain_text : \r\n" << plain_text << "\r\nlen : " << plain_text.size();

	// std::string cipher_text = aes256.Encrype(plain_text);
	// LOG_DEBUG << "cipher_text : \r\n" << cipher_text << "\r\nlen : " << cipher_text.size();

	// plain_text = aes256.Decrype(cipher_text);
	// LOG_DEBUG << "plain_text : \r\n" << plain_text << "\r\nlen : " << plain_text.size();
}
