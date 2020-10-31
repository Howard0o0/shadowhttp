#ifndef AES_CODEC_H
#define AES_CODEC_H

#include "padding.h"
#include <memory>
#include <string>

class AESCodec {
    public:
	AESCodec(const std::string& key) : key_(key), padding_(new PKCS5Padding) {
	}

	virtual std::string Encrype(const std::string& plain_text)  = 0;
	virtual std::string Decrype(const std::string& cipher_text) = 0;

    protected:
	std::string		   key_;
	std::shared_ptr< Padding > padding_;
};

#endif