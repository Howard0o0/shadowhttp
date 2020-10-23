#include "shadowhttpserver.h"
#include "tunnel.h"
#include <malloc.h>
#include <memory>
#include <stdio.h>
#include <sys/resource.h>
#include <unistd.h>

int main(int argc, char* argv[]) {

	std::shared_ptr< ShadowhttpServer > shadowhttpserver =
		std::make_shared< ShadowhttpServer >(9090);
	shadowhttpserver->Start();
}
