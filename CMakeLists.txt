#设置cmake版本号
cmake_minimum_required(VERSION 3.4.0)
 
#设置工程名称
project(tinythreadpool)
 
#使用boost_log
ADD_DEFINITIONS(-DBOOST_LOG_DYN_LINK)

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin/) 
add_definitions(-std=c++11)
set(CXX_FLAGS
 -g
 -Wall
 -Wextra
 # -m32
 -Werror
 #-Wconversion
 -Wno-unused-parameter
 #-Wold-style-cast
 -Woverloaded-virtual
 -Wpointer-arith
 -Wshadow
 -Wwrite-strings
 -march=native
 -rdynamic
 )
set (MUDUO_PATH "${CMAKE_SOURCE_DIR}/third-party-libs/muduo")
set (CURL_PATH "${CMAKE_SOURCE_DIR}/third-party-libs/curl")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D__FILENAME__='\"$(subst  ${CMAKE_SOURCE_DIR}/,,$(abspath $<))\"'") 

find_path(Muduo_INCLUDE_DIR muduo "${MUDUO_PATH}/include")
find_path(Muduo_LIBRARY_DIR libmuduo_net.a "${MUDUO_PATH}/lib")
set(CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH} ${Muduo_LIBRARY_DIR})
message(STATUS ${Muduo_INCLUDE_DIR})
message(STATUS ${Muduo_LIBRARY_DIR})

include_directories(${Muduo_INCLUDE_DIR})
find_library(muduo_base muduo_base)
find_library(muduo_net muduo_net)
message(STATUS ${muduo_base})
message(STATUS ${muduo_net})

 
#find head files
#include_directories( ./src) 
include_directories( ./src/core) 
include_directories( ./src/util) 
include_directories (${CURL_PATH}/include)
find_package(Boost REQUIRED)
include_directories(${Boost_INCLUDE_DIRS})

link_directories(/usr/local/lib ${MUDUO_PATH}/lib ${CURL_PATH}/lib)
 

#find source files
#aux_source_directory(./src SRC_FILES)
aux_source_directory(./src/core SRC_CORE_FILES)
aux_source_directory(./src/util SRC_UTIL_FILES)

#创建工程文件
add_executable(sh-local ./src/sh-local.cc ${SRC_CORE_FILES} ${SRC_UTIL_FILES})
target_link_libraries(sh-local ${muduo_net} ${muduo_base} pthread curl boost_locale boost_log boost_log_setup boost_system crypto)

add_executable(sh-server ./src/sh-server.cc ${SRC_CORE_FILES} ${SRC_UTIL_FILES})
target_link_libraries(sh-server ${muduo_net} ${muduo_base} pthread curl boost_locale boost_log boost_log_setup boost_system crypto)

 