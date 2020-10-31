#include "padding.h"

void PKCS5Padding::FillPadding(std::string& data) {
	const int block_size = 16;
	int	  padding_size =
		data.size() % block_size == 0 ? block_size : block_size - data.size() % block_size;
	for (int i = 0; i < padding_size; ++i)
		data.push_back(padding_size);
}

void PKCS5Padding::ErasePadding(std::string& data) {
	int padding_size = data.back();

	data.erase(data.size() - padding_size, padding_size);
}