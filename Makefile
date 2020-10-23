# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/howard/work/shadowhttp/CMakeFiles /home/howard/work/shadowhttp/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/howard/work/shadowhttp/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named httptest.app

# Build rule for target.
httptest.app: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 httptest.app
.PHONY : httptest.app

# fast build rule for target.
httptest.app/fast:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/build
.PHONY : httptest.app/fast

src/aes256cbccodec.o: src/aes256cbccodec.cc.o

.PHONY : src/aes256cbccodec.o

# target to build an object file
src/aes256cbccodec.cc.o:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/aes256cbccodec.cc.o
.PHONY : src/aes256cbccodec.cc.o

src/aes256cbccodec.i: src/aes256cbccodec.cc.i

.PHONY : src/aes256cbccodec.i

# target to preprocess a source file
src/aes256cbccodec.cc.i:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/aes256cbccodec.cc.i
.PHONY : src/aes256cbccodec.cc.i

src/aes256cbccodec.s: src/aes256cbccodec.cc.s

.PHONY : src/aes256cbccodec.s

# target to generate assembly for a file
src/aes256cbccodec.cc.s:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/aes256cbccodec.cc.s
.PHONY : src/aes256cbccodec.cc.s

src/httpmessagecodec.o: src/httpmessagecodec.cc.o

.PHONY : src/httpmessagecodec.o

# target to build an object file
src/httpmessagecodec.cc.o:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.o
.PHONY : src/httpmessagecodec.cc.o

src/httpmessagecodec.i: src/httpmessagecodec.cc.i

.PHONY : src/httpmessagecodec.i

# target to preprocess a source file
src/httpmessagecodec.cc.i:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.i
.PHONY : src/httpmessagecodec.cc.i

src/httpmessagecodec.s: src/httpmessagecodec.cc.s

.PHONY : src/httpmessagecodec.s

# target to generate assembly for a file
src/httpmessagecodec.cc.s:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.s
.PHONY : src/httpmessagecodec.cc.s

src/main.o: src/main.cc.o

.PHONY : src/main.o

# target to build an object file
src/main.cc.o:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/main.cc.o
.PHONY : src/main.cc.o

src/main.i: src/main.cc.i

.PHONY : src/main.i

# target to preprocess a source file
src/main.cc.i:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/main.cc.i
.PHONY : src/main.cc.i

src/main.s: src/main.cc.s

.PHONY : src/main.s

# target to generate assembly for a file
src/main.cc.s:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/main.cc.s
.PHONY : src/main.cc.s

src/regextool.o: src/regextool.cc.o

.PHONY : src/regextool.o

# target to build an object file
src/regextool.cc.o:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/regextool.cc.o
.PHONY : src/regextool.cc.o

src/regextool.i: src/regextool.cc.i

.PHONY : src/regextool.i

# target to preprocess a source file
src/regextool.cc.i:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/regextool.cc.i
.PHONY : src/regextool.cc.i

src/regextool.s: src/regextool.cc.s

.PHONY : src/regextool.s

# target to generate assembly for a file
src/regextool.cc.s:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/regextool.cc.s
.PHONY : src/regextool.cc.s

src/shadowhttpclient.o: src/shadowhttpclient.cc.o

.PHONY : src/shadowhttpclient.o

# target to build an object file
src/shadowhttpclient.cc.o:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/shadowhttpclient.cc.o
.PHONY : src/shadowhttpclient.cc.o

src/shadowhttpclient.i: src/shadowhttpclient.cc.i

.PHONY : src/shadowhttpclient.i

# target to preprocess a source file
src/shadowhttpclient.cc.i:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/shadowhttpclient.cc.i
.PHONY : src/shadowhttpclient.cc.i

src/shadowhttpclient.s: src/shadowhttpclient.cc.s

.PHONY : src/shadowhttpclient.s

# target to generate assembly for a file
src/shadowhttpclient.cc.s:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/shadowhttpclient.cc.s
.PHONY : src/shadowhttpclient.cc.s

src/shadowhttpserver.o: src/shadowhttpserver.cc.o

.PHONY : src/shadowhttpserver.o

# target to build an object file
src/shadowhttpserver.cc.o:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.o
.PHONY : src/shadowhttpserver.cc.o

src/shadowhttpserver.i: src/shadowhttpserver.cc.i

.PHONY : src/shadowhttpserver.i

# target to preprocess a source file
src/shadowhttpserver.cc.i:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.i
.PHONY : src/shadowhttpserver.cc.i

src/shadowhttpserver.s: src/shadowhttpserver.cc.s

.PHONY : src/shadowhttpserver.s

# target to generate assembly for a file
src/shadowhttpserver.cc.s:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.s
.PHONY : src/shadowhttpserver.cc.s

src/sockettool.o: src/sockettool.cc.o

.PHONY : src/sockettool.o

# target to build an object file
src/sockettool.cc.o:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/sockettool.cc.o
.PHONY : src/sockettool.cc.o

src/sockettool.i: src/sockettool.cc.i

.PHONY : src/sockettool.i

# target to preprocess a source file
src/sockettool.cc.i:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/sockettool.cc.i
.PHONY : src/sockettool.cc.i

src/sockettool.s: src/sockettool.cc.s

.PHONY : src/sockettool.s

# target to generate assembly for a file
src/sockettool.cc.s:
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/sockettool.cc.s
.PHONY : src/sockettool.cc.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... httptest.app"
	@echo "... edit_cache"
	@echo "... src/aes256cbccodec.o"
	@echo "... src/aes256cbccodec.i"
	@echo "... src/aes256cbccodec.s"
	@echo "... src/httpmessagecodec.o"
	@echo "... src/httpmessagecodec.i"
	@echo "... src/httpmessagecodec.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
	@echo "... src/regextool.o"
	@echo "... src/regextool.i"
	@echo "... src/regextool.s"
	@echo "... src/shadowhttpclient.o"
	@echo "... src/shadowhttpclient.i"
	@echo "... src/shadowhttpclient.s"
	@echo "... src/shadowhttpserver.o"
	@echo "... src/shadowhttpserver.i"
	@echo "... src/shadowhttpserver.s"
	@echo "... src/sockettool.o"
	@echo "... src/sockettool.i"
	@echo "... src/sockettool.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

