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
include CMakeFiles/httptest.app.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/httptest.app.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/httptest.app.dir/flags.make

CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.o: CMakeFiles/httptest.app.dir/flags.make
CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.o: src/httpmessagecodec.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/shadowhttp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.o -c /home/howard/work/shadowhttp/src/httpmessagecodec.cc

CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/shadowhttp/src/httpmessagecodec.cc > CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.i

CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/shadowhttp/src/httpmessagecodec.cc -o CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.s

CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.o.requires:

.PHONY : CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.o.requires

CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.o.provides: CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.o.requires
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.o.provides.build
.PHONY : CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.o.provides

CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.o.provides.build: CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.o


CMakeFiles/httptest.app.dir/src/main.cc.o: CMakeFiles/httptest.app.dir/flags.make
CMakeFiles/httptest.app.dir/src/main.cc.o: src/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/shadowhttp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/httptest.app.dir/src/main.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/httptest.app.dir/src/main.cc.o -c /home/howard/work/shadowhttp/src/main.cc

CMakeFiles/httptest.app.dir/src/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/httptest.app.dir/src/main.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/shadowhttp/src/main.cc > CMakeFiles/httptest.app.dir/src/main.cc.i

CMakeFiles/httptest.app.dir/src/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/httptest.app.dir/src/main.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/shadowhttp/src/main.cc -o CMakeFiles/httptest.app.dir/src/main.cc.s

CMakeFiles/httptest.app.dir/src/main.cc.o.requires:

.PHONY : CMakeFiles/httptest.app.dir/src/main.cc.o.requires

CMakeFiles/httptest.app.dir/src/main.cc.o.provides: CMakeFiles/httptest.app.dir/src/main.cc.o.requires
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/main.cc.o.provides.build
.PHONY : CMakeFiles/httptest.app.dir/src/main.cc.o.provides

CMakeFiles/httptest.app.dir/src/main.cc.o.provides.build: CMakeFiles/httptest.app.dir/src/main.cc.o


CMakeFiles/httptest.app.dir/src/regextool.cc.o: CMakeFiles/httptest.app.dir/flags.make
CMakeFiles/httptest.app.dir/src/regextool.cc.o: src/regextool.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/shadowhttp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/httptest.app.dir/src/regextool.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/httptest.app.dir/src/regextool.cc.o -c /home/howard/work/shadowhttp/src/regextool.cc

CMakeFiles/httptest.app.dir/src/regextool.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/httptest.app.dir/src/regextool.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/shadowhttp/src/regextool.cc > CMakeFiles/httptest.app.dir/src/regextool.cc.i

CMakeFiles/httptest.app.dir/src/regextool.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/httptest.app.dir/src/regextool.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/shadowhttp/src/regextool.cc -o CMakeFiles/httptest.app.dir/src/regextool.cc.s

CMakeFiles/httptest.app.dir/src/regextool.cc.o.requires:

.PHONY : CMakeFiles/httptest.app.dir/src/regextool.cc.o.requires

CMakeFiles/httptest.app.dir/src/regextool.cc.o.provides: CMakeFiles/httptest.app.dir/src/regextool.cc.o.requires
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/regextool.cc.o.provides.build
.PHONY : CMakeFiles/httptest.app.dir/src/regextool.cc.o.provides

CMakeFiles/httptest.app.dir/src/regextool.cc.o.provides.build: CMakeFiles/httptest.app.dir/src/regextool.cc.o


CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.o: CMakeFiles/httptest.app.dir/flags.make
CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.o: src/shadowhttpserver.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/shadowhttp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.o -c /home/howard/work/shadowhttp/src/shadowhttpserver.cc

CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/shadowhttp/src/shadowhttpserver.cc > CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.i

CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/shadowhttp/src/shadowhttpserver.cc -o CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.s

CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.o.requires:

.PHONY : CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.o.requires

CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.o.provides: CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.o.requires
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.o.provides.build
.PHONY : CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.o.provides

CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.o.provides.build: CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.o


CMakeFiles/httptest.app.dir/src/sockettool.cc.o: CMakeFiles/httptest.app.dir/flags.make
CMakeFiles/httptest.app.dir/src/sockettool.cc.o: src/sockettool.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/shadowhttp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/httptest.app.dir/src/sockettool.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/httptest.app.dir/src/sockettool.cc.o -c /home/howard/work/shadowhttp/src/sockettool.cc

CMakeFiles/httptest.app.dir/src/sockettool.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/httptest.app.dir/src/sockettool.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/shadowhttp/src/sockettool.cc > CMakeFiles/httptest.app.dir/src/sockettool.cc.i

CMakeFiles/httptest.app.dir/src/sockettool.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/httptest.app.dir/src/sockettool.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/shadowhttp/src/sockettool.cc -o CMakeFiles/httptest.app.dir/src/sockettool.cc.s

CMakeFiles/httptest.app.dir/src/sockettool.cc.o.requires:

.PHONY : CMakeFiles/httptest.app.dir/src/sockettool.cc.o.requires

CMakeFiles/httptest.app.dir/src/sockettool.cc.o.provides: CMakeFiles/httptest.app.dir/src/sockettool.cc.o.requires
	$(MAKE) -f CMakeFiles/httptest.app.dir/build.make CMakeFiles/httptest.app.dir/src/sockettool.cc.o.provides.build
.PHONY : CMakeFiles/httptest.app.dir/src/sockettool.cc.o.provides

CMakeFiles/httptest.app.dir/src/sockettool.cc.o.provides.build: CMakeFiles/httptest.app.dir/src/sockettool.cc.o


# Object files for target httptest.app
httptest_app_OBJECTS = \
"CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.o" \
"CMakeFiles/httptest.app.dir/src/main.cc.o" \
"CMakeFiles/httptest.app.dir/src/regextool.cc.o" \
"CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.o" \
"CMakeFiles/httptest.app.dir/src/sockettool.cc.o"

# External object files for target httptest.app
httptest_app_EXTERNAL_OBJECTS =

bin/httptest.app: CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.o
bin/httptest.app: CMakeFiles/httptest.app.dir/src/main.cc.o
bin/httptest.app: CMakeFiles/httptest.app.dir/src/regextool.cc.o
bin/httptest.app: CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.o
bin/httptest.app: CMakeFiles/httptest.app.dir/src/sockettool.cc.o
bin/httptest.app: CMakeFiles/httptest.app.dir/build.make
bin/httptest.app: third-party-libs/muduo/lib/libmuduo_net.a
bin/httptest.app: third-party-libs/muduo/lib/libmuduo_base.a
bin/httptest.app: CMakeFiles/httptest.app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/howard/work/shadowhttp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable bin/httptest.app"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/httptest.app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/httptest.app.dir/build: bin/httptest.app

.PHONY : CMakeFiles/httptest.app.dir/build

CMakeFiles/httptest.app.dir/requires: CMakeFiles/httptest.app.dir/src/httpmessagecodec.cc.o.requires
CMakeFiles/httptest.app.dir/requires: CMakeFiles/httptest.app.dir/src/main.cc.o.requires
CMakeFiles/httptest.app.dir/requires: CMakeFiles/httptest.app.dir/src/regextool.cc.o.requires
CMakeFiles/httptest.app.dir/requires: CMakeFiles/httptest.app.dir/src/shadowhttpserver.cc.o.requires
CMakeFiles/httptest.app.dir/requires: CMakeFiles/httptest.app.dir/src/sockettool.cc.o.requires

.PHONY : CMakeFiles/httptest.app.dir/requires

CMakeFiles/httptest.app.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/httptest.app.dir/cmake_clean.cmake
.PHONY : CMakeFiles/httptest.app.dir/clean

CMakeFiles/httptest.app.dir/depend:
	cd /home/howard/work/shadowhttp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/howard/work/shadowhttp /home/howard/work/shadowhttp /home/howard/work/shadowhttp /home/howard/work/shadowhttp /home/howard/work/shadowhttp/CMakeFiles/httptest.app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/httptest.app.dir/depend

