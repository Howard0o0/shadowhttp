#ifndef AES256CBCCODEC_H
#define AES256CBCCODEC_H

#include "aescodec.h"

class AES256cbcCodec : public AESCodec {
    public:
	AES256cbcCodec(const std::string& key);

	virtual std::string Encrype(const std::string& plain_text) override;
	virtual std::string Decrype(const std::string& cipher_text) override;

    private:
	std::string AES256cbcEncode(const std::string& data, const std::string& password);
	std::string AES256cbcDecode(const std::string& strData, const std::string& password);
};

#endif
