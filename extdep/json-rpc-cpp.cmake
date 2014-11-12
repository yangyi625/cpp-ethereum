ExternalProject_Add(json-rpc-cpp
	DEPENDS curl
	GIT_REPOSITORY https://github.com/cinemast/libjson-rpc-cpp.git 
	GIT_TAG 0.2.1
	BINARY_DIR json-rpc-cpp-prefix/src/json-rpc-cpp
    CONFIGURE_COMMAND patch -d src/example < ${CMAKE_CURRENT_SOURCE_DIR}/json-rpc-cpp_osx.patch && cmake -DCMAKE_INSTALL_PREFIX=${ETH_DEPENDENCY_INSTALL_DIR} -DCMAKE_MODULE_PATH:PATH=${CMAKE_CURRENT_SOURCE_DIR} -DETH_DEPENDENCY_INSTALL_DIR:PATH=${ETH_DEPENDENCY_INSTALL_DIR} -DCMAKE_BUILD_TYPE=None -DCMAKE_FIND_FRAMEWORK=LAST -Wno-dev .
	BUILD_COMMAND make jsonrpc -j 3
	INSTALL_COMMAND make install
	)


