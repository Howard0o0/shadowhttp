#ifndef AES_CODEC_H
#define AES_CODEC_H

#include <string>

class AESCodec {
    public:
	AESCodec(const std::string& key) : key_(key) {
	}

	virtual std::string Encrype(const std::string& plain_text)  = 0;
	virtual std::string Decrype(const std::string& cipher_text) = 0;

    protected:
	std::string key_;
};

#endif