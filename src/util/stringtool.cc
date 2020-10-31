#include "stringtool.h"

void StringTool::ErasePadding(std::string& data) {
	while (data.back() == '\0')
		data.pop_back();
}