# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/howard/work/shadowhttp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/howard/work/shadowhttp

# Include any dependencies generated for this target.
include CMakeFiles/sh-local.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sh-local.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sh-local.dir/flags.make

CMakeFiles/sh-local.dir/src/sh-local.cc.o: CMakeFiles/sh-local.dir/flags.make
CMakeFiles/sh-local.dir/src/sh-local.cc.o: src/sh-local.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/shadowhttp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sh-local.dir/src/sh-local.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sh-local.dir/src/sh-local.cc.o -c /home/howard/work/shadowhttp/src/sh-local.cc

CMakeFiles/sh-local.dir/src/sh-local.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sh-local.dir/src/sh-local.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/shadowhttp/src/sh-local.cc > CMakeFiles/sh-local.dir/src/sh-local.cc.i

CMakeFiles/sh-local.dir/src/sh-local.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sh-local.dir/src/sh-local.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/shadowhttp/src/sh-local.cc -o CMakeFiles/sh-local.dir/src/sh-local.cc.s

CMakeFiles/sh-local.dir/src/sh-local.cc.o.requires:

.PHONY : CMakeFiles/sh-local.dir/src/sh-local.cc.o.requires

CMakeFiles/sh-local.dir/src/sh-local.cc.o.provides: CMakeFiles/sh-local.dir/src/sh-local.cc.o.requires
	$(MAKE) -f CMakeFiles/sh-local.dir/build.make CMakeFiles/sh-local.dir/src/sh-local.cc.o.provides.build
.PHONY : CMakeFiles/sh-local.dir/src/sh-local.cc.o.provides

CMakeFiles/sh-local.dir/src/sh-local.cc.o.provides.build: CMakeFiles/sh-local.dir/src/sh-local.cc.o


CMakeFiles/sh-local.dir/src/core/aes256cbccodec.cc.o: CMakeFiles/sh-local.dir/flags.make
CMakeFiles/sh-local.dir/src/core/aes256cbccodec.cc.o: src/core/aes256cbccodec.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/shadowhttp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sh-local.dir/src/core/aes256cbccodec.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sh-local.dir/src/core/aes256cbccodec.cc.o -c /home/howard/work/shadowhttp/src/core/aes256cbccodec.cc

CMakeFiles/sh-local.dir/src/core/aes256cbccodec.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sh-local.dir/src/core/aes256cbccodec.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/shadowhttp/src/core/aes256cbccodec.cc > CMakeFiles/sh-local.dir/src/core/aes256cbccodec.cc.i

CMakeFiles/sh-local.dir/src/core/aes256cbccodec.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sh-local.dir/src/core/aes256cbccodec.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/shadowhttp/src/core/aes256cbccodec.cc -o CMakeFiles/sh-local.dir/src/core/aes256cbccodec.cc.s

CMakeFiles/sh-local.dir/src/core/aes256cbccodec.cc.o.requires:

.PHONY : CMakeFiles/sh-local.dir/src/core/aes256cbccodec.cc.o.requires

CMakeFiles/sh-local.dir/src/core/aes256cbccodec.cc.o.provides: CMakeFiles/sh-local.dir/src/core/aes256cbccodec.cc.o.requires
	$(MAKE) -f CMakeFiles/sh-local.dir/build.make CMakeFiles/sh-local.dir/src/core/aes256cbccodec.cc.o.provides.build
.PHONY : CMakeFiles/sh-local.dir/src/core/aes256cbccodec.cc.o.provides

CMakeFiles/sh-local.dir/src/core/aes256cbccodec.cc.o.provides.build: CMakeFiles/sh-local.dir/src/core/aes256cbccodec.cc.o


CMakeFiles/sh-local.dir/src/core/httpmessagecodec.cc.o: CMakeFiles/sh-local.dir/flags.make
CMakeFiles/sh-local.dir/src/core/httpmessagecodec.cc.o: src/core/httpmessagecodec.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/shadowhttp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/sh-local.dir/src/core/httpmessagecodec.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sh-local.dir/src/core/httpmessagecodec.cc.o -c /home/howard/work/shadowhttp/src/core/httpmessagecodec.cc

CMakeFiles/sh-local.dir/src/core/httpmessagecodec.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sh-local.dir/src/core/httpmessagecodec.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/shadowhttp/src/core/httpmessagecodec.cc > CMakeFiles/sh-local.dir/src/core/httpmessagecodec.cc.i

CMakeFiles/sh-local.dir/src/core/httpmessagecodec.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sh-local.dir/src/core/httpmessagecodec.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/shadowhttp/src/core/httpmessagecodec.cc -o CMakeFiles/sh-local.dir/src/core/httpmessagecodec.cc.s

CMakeFiles/sh-local.dir/src/core/httpmessagecodec.cc.o.requires:

.PHONY : CMakeFiles/sh-local.dir/src/core/httpmessagecodec.cc.o.requires

CMakeFiles/sh-local.dir/src/core/httpmessagecodec.cc.o.provides: CMakeFiles/sh-local.dir/src/core/httpmessagecodec.cc.o.requires
	$(MAKE) -f CMakeFiles/sh-local.dir/build.make CMakeFiles/sh-local.dir/src/core/httpmessagecodec.cc.o.provides.build
.PHONY : CMakeFiles/sh-local.dir/src/core/httpmessagecodec.cc.o.provides

CMakeFiles/sh-local.dir/src/core/httpmessagecodec.cc.o.provides.build: CMakeFiles/sh-local.dir/src/core/httpmessagecodec.cc.o


CMakeFiles/sh-local.dir/src/core/shadowhttpclient.cc.o: CMakeFiles/sh-local.dir/flags.make
CMakeFiles/sh-local.dir/src/core/shadowhttpclient.cc.o: src/core/shadowhttpclient.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/shadowhttp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/sh-local.dir/src/core/shadowhttpclient.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sh-local.dir/src/core/shadowhttpclient.cc.o -c /home/howard/work/shadowhttp/src/core/shadowhttpclient.cc

CMakeFiles/sh-local.dir/src/core/shadowhttpclient.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sh-local.dir/src/core/shadowhttpclient.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/shadowhttp/src/core/shadowhttpclient.cc > CMakeFiles/sh-local.dir/src/core/shadowhttpclient.cc.i

CMakeFiles/sh-local.dir/src/core/shadowhttpclient.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sh-local.dir/src/core/shadowhttpclient.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/shadowhttp/src/core/shadowhttpclient.cc -o CMakeFiles/sh-local.dir/src/core/shadowhttpclient.cc.s

CMakeFiles/sh-local.dir/src/core/shadowhttpclient.cc.o.requires:

.PHONY : CMakeFiles/sh-local.dir/src/core/shadowhttpclient.cc.o.requires

CMakeFiles/sh-local.dir/src/core/shadowhttpclient.cc.o.provides: CMakeFiles/sh-local.dir/src/core/shadowhttpclient.cc.o.requires
	$(MAKE) -f CMakeFiles/sh-local.dir/build.make CMakeFiles/sh-local.dir/src/core/shadowhttpclient.cc.o.provides.build
.PHONY : CMakeFiles/sh-local.dir/src/core/shadowhttpclient.cc.o.provides

CMakeFiles/sh-local.dir/src/core/shadowhttpclient.cc.o.provides.build: CMakeFiles/sh-local.dir/src/core/shadowhttpclient.cc.o


CMakeFiles/sh-local.dir/src/core/shadowhttpserver.cc.o: CMakeFiles/sh-local.dir/flags.make
CMakeFiles/sh-local.dir/src/core/shadowhttpserver.cc.o: src/core/shadowhttpserver.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/shadowhttp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/sh-local.dir/src/core/shadowhttpserver.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sh-local.dir/src/core/shadowhttpserver.cc.o -c /home/howard/work/shadowhttp/src/core/shadowhttpserver.cc

CMakeFiles/sh-local.dir/src/core/shadowhttpserver.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sh-local.dir/src/core/shadowhttpserver.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/shadowhttp/src/core/shadowhttpserver.cc > CMakeFiles/sh-local.dir/src/core/shadowhttpserver.cc.i

CMakeFiles/sh-local.dir/src/core/shadowhttpserver.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sh-local.dir/src/core/shadowhttpserver.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/shadowhttp/src/core/shadowhttpserver.cc -o CMakeFiles/sh-local.dir/src/core/shadowhttpserver.cc.s

CMakeFiles/sh-local.dir/src/core/shadowhttpserver.cc.o.requires:

.PHONY : CMakeFiles/sh-local.dir/src/core/shadowhttpserver.cc.o.requires

CMakeFiles/sh-local.dir/src/core/shadowhttpserver.cc.o.provides: CMakeFiles/sh-local.dir/src/core/shadowhttpserver.cc.o.requires
	$(MAKE) -f CMakeFiles/sh-local.dir/build.make CMakeFiles/sh-local.dir/src/core/shadowhttpserver.cc.o.provides.build
.PHONY : CMakeFiles/sh-local.dir/src/core/shadowhttpserver.cc.o.provides

CMakeFiles/sh-local.dir/src/core/shadowhttpserver.cc.o.provides.build: CMakeFiles/sh-local.dir/src/core/shadowhttpserver.cc.o


CMakeFiles/sh-local.dir/src/util/regextool.cc.o: CMakeFiles/sh-local.dir/flags.make
CMakeFiles/sh-local.dir/src/util/regextool.cc.o: src/util/regextool.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/shadowhttp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/sh-local.dir/src/util/regextool.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sh-local.dir/src/util/regextool.cc.o -c /home/howard/work/shadowhttp/src/util/regextool.cc

CMakeFiles/sh-local.dir/src/util/regextool.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sh-local.dir/src/util/regextool.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/shadowhttp/src/util/regextool.cc > CMakeFiles/sh-local.dir/src/util/regextool.cc.i

CMakeFiles/sh-local.dir/src/util/regextool.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sh-local.dir/src/util/regextool.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/shadowhttp/src/util/regextool.cc -o CMakeFiles/sh-local.dir/src/util/regextool.cc.s

CMakeFiles/sh-local.dir/src/util/regextool.cc.o.requires:

.PHONY : CMakeFiles/sh-local.dir/src/util/regextool.cc.o.requires

CMakeFiles/sh-local.dir/src/util/regextool.cc.o.provides: CMakeFiles/sh-local.dir/src/util/regextool.cc.o.requires
	$(MAKE) -f CMakeFiles/sh-local.dir/build.make CMakeFiles/sh-local.dir/src/util/regextool.cc.o.provides.build
.PHONY : CMakeFiles/sh-local.dir/src/util/regextool.cc.o.provides

CMakeFiles/sh-local.dir/src/util/regextool.cc.o.provides.build: CMakeFiles/sh-local.dir/src/util/regextool.cc.o


CMakeFiles/sh-local.dir/src/util/sockettool.cc.o: CMakeFiles/sh-local.dir/flags.make
CMakeFiles/sh-local.dir/src/util/sockettool.cc.o: src/util/sockettool.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/shadowhttp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/sh-local.dir/src/util/sockettool.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sh-local.dir/src/util/sockettool.cc.o -c /home/howard/work/shadowhttp/src/util/sockettool.cc

CMakeFiles/sh-local.dir/src/util/sockettool.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sh-local.dir/src/util/sockettool.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/shadowhttp/src/util/sockettool.cc > CMakeFiles/sh-local.dir/src/util/sockettool.cc.i

CMakeFiles/sh-local.dir/src/util/sockettool.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sh-local.dir/src/util/sockettool.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/shadowhttp/src/util/sockettool.cc -o CMakeFiles/sh-local.dir/src/util/sockettool.cc.s

CMakeFiles/sh-local.dir/src/util/sockettool.cc.o.requires:

.PHONY : CMakeFiles/sh-local.dir/src/util/sockettool.cc.o.requires

CMakeFiles/sh-local.dir/src/util/sockettool.cc.o.provides: CMakeFiles/sh-local.dir/src/util/sockettool.cc.o.requires
	$(MAKE) -f CMakeFiles/sh-local.dir/build.make CMakeFiles/sh-local.dir/src/util/sockettool.cc.o.provides.build
.PHONY : CMakeFiles/sh-local.dir/src/util/sockettool.cc.o.provides

CMakeFiles/sh-local.dir/src/util/sockettool.cc.o.provides.build: CMakeFiles/sh-local.dir/src/util/sockettool.cc.o


# Object files for target sh-local
sh__local_OBJECTS = \
"CMakeFiles/sh-local.dir/src/sh-local.cc.o" \
"CMakeFiles/sh-local.dir/src/core/aes256cbccodec.cc.o" \
"CMakeFiles/sh-local.dir/src/core/httpmessagecodec.cc.o" \
"CMakeFiles/sh-local.dir/src/core/shadowhttpclient.cc.o" \
"CMakeFiles/sh-local.dir/src/core/shadowhttpserver.cc.o" \
"CMakeFiles/sh-local.dir/src/util/regextool.cc.o" \
"CMakeFiles/sh-local.dir/src/util/sockettool.cc.o"

# External object files for target sh-local
sh__local_EXTERNAL_OBJECTS =

bin/sh-local: CMakeFiles/sh-local.dir/src/sh-local.cc.o
bin/sh-local: CMakeFiles/sh-local.dir/src/core/aes256cbccodec.cc.o
bin/sh-local: CMakeFiles/sh-local.dir/src/core/httpmessagecodec.cc.o
bin/sh-local: CMakeFiles/sh-local.dir/src/core/shadowhttpclient.cc.o
bin/sh-local: CMakeFiles/sh-local.dir/src/core/shadowhttpserver.cc.o
bin/sh-local: CMakeFiles/sh-local.dir/src/util/regextool.cc.o
bin/sh-local: CMakeFiles/sh-local.dir/src/util/sockettool.cc.o
bin/sh-local: CMakeFiles/sh-local.dir/build.make
bin/sh-local: third-party-libs/muduo/lib/libmuduo_net.a
bin/sh-local: third-party-libs/muduo/lib/libmuduo_base.a
bin/sh-local: CMakeFiles/sh-local.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/howard/work/shadowhttp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable bin/sh-local"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sh-local.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sh-local.dir/build: bin/sh-local

.PHONY : CMakeFiles/sh-local.dir/build

CMakeFiles/sh-local.dir/requires: CMakeFiles/sh-local.dir/src/sh-local.cc.o.requires
CMakeFiles/sh-local.dir/requires: CMakeFiles/sh-local.dir/src/core/aes256cbccodec.cc.o.requires
CMakeFiles/sh-local.dir/requires: CMakeFiles/sh-local.dir/src/core/httpmessagecodec.cc.o.requires
CMakeFiles/sh-local.dir/requires: CMakeFiles/sh-local.dir/src/core/shadowhttpclient.cc.o.requires
CMakeFiles/sh-local.dir/requires: CMakeFiles/sh-local.dir/src/core/shadowhttpserver.cc.o.requires
CMakeFiles/sh-local.dir/requires: CMakeFiles/sh-local.dir/src/util/regextool.cc.o.requires
CMakeFiles/sh-local.dir/requires: CMakeFiles/sh-local.dir/src/util/sockettool.cc.o.requires

.PHONY : CMakeFiles/sh-local.dir/requires

CMakeFiles/sh-local.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sh-local.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sh-local.dir/clean

CMakeFiles/sh-local.dir/depend:
	cd /home/howard/work/shadowhttp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/howard/work/shadowhttp /home/howard/work/shadowhttp /home/howard/work/shadowhttp /home/howard/work/shadowhttp /home/howard/work/shadowhttp/CMakeFiles/sh-local.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sh-local.dir/depend
