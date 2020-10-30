#ifndef PADDING_H
#define PADDING_H

#include <string>

class Padding {
    public:
	virtual void FillPadding(std::string& data)  = 0;
	virtual void ErasePadding(std::string& data) = 0;
};

class PKCS5Padding : public Padding {
    public:
	virtual void FillPadding(std::string& data) override;
	virtual void ErasePadding(std::string& data) override;
};

#endif