#include "aes256cbccodec.h"
#include "padding.h"
#include <memory>
#include <openssl/aes.h>
#include <stdlib.h>
#include <string.h>

/* public methods */

AES256cbcCodec::AES256cbcCodec(const std::string& key) : AESCodec(key) {
	if (this->key_.size() >= 32)
		this->key_ = this->key_.substr(0, 32);
	else
		this->key_.resize(32);
}

std::string AES256cbcCodec::Encrype(const std::string& plain_text) {
	return this->AES256cbcEncode(plain_text, this->key_);
}
std::string AES256cbcCodec::Decrype(const std::string& cipher_text) {
	return this->AES256cbcDecode(cipher_text, this->key_);
}
/* end of public methods */

/* private methods */
std::string AES256cbcCodec::AES256cbcEncode(const std::string& data, const std::string& password) {
	// 这里默认将iv全置为字符0
	unsigned char iv[ AES_BLOCK_SIZE ] = { '0', '0', '0', '0', '0', '0', '0', '0',
					       '0', '0', '0', '0', '0', '0', '0', '0' };

	AES_KEY aes_key;
	if (AES_set_encrypt_key(( const unsigned char* )password.c_str(), password.length() * 8,
				&aes_key)
	    < 0) {
		// assert(false);
		return "";
	}
	std::string  strRet;
	std::string  data_bak	 = data;
	unsigned int data_length = data_bak.length();

	// ZeroPadding
	// int padding = 0;
	// if (data_bak.length() % (AES_BLOCK_SIZE) > 0) {
	// 	padding = AES_BLOCK_SIZE - data_bak.length() % (AES_BLOCK_SIZE);
	// }
	// data_length += padding;
	// while (padding > 0) {
	// 	data_bak += '\0';
	// 	padding--;
	// }

	/* padding */
	this->padding_->FillPadding(data_bak);

	for (unsigned int i = 0; i < data_bak.size() / (AES_BLOCK_SIZE); i++) {
		std::string   str16 = data_bak.substr(i * AES_BLOCK_SIZE, AES_BLOCK_SIZE);
		unsigned char out[ AES_BLOCK_SIZE ];
		::memset(out, 0, AES_BLOCK_SIZE);
		AES_cbc_encrypt(( const unsigned char* )str16.c_str(), out, AES_BLOCK_SIZE,
				&aes_key, iv, AES_ENCRYPT);
		strRet += std::string(( const char* )out, AES_BLOCK_SIZE);
	}
	return strRet;
}

std::string AES256cbcCodec::AES256cbcDecode(const std::string& strData,
					    const std::string& password) {
	// 这里默认将iv全置为字符0
	unsigned char iv[ AES_BLOCK_SIZE ] = { '0', '0', '0', '0', '0', '0', '0', '0',
					       '0', '0', '0', '0', '0', '0', '0', '0' };

	AES_KEY aes_key;
	if (AES_set_decrypt_key(( const unsigned char* )password.c_str(), password.length() * 8,
				&aes_key)
	    < 0) {
		// assert(false);
		return "";
	}
	std::string strRet;
	for (unsigned int i = 0; i < strData.length() / AES_BLOCK_SIZE; i++) {
		std::string   str16 = strData.substr(i * AES_BLOCK_SIZE, AES_BLOCK_SIZE);
		unsigned char out[ AES_BLOCK_SIZE ];
		::memset(out, 0, AES_BLOCK_SIZE);
		AES_cbc_encrypt(( const unsigned char* )str16.c_str(), out, AES_BLOCK_SIZE,
				&aes_key, iv, AES_DECRYPT);
		strRet += std::string(( const char* )out, AES_BLOCK_SIZE);
	}

	this->padding_->ErasePadding(strRet);
	return strRet;
}

/* end of fprivate methods */