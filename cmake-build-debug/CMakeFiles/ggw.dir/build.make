# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/chenguowei/CLionProjects/ggw

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/chenguowei/CLionProjects/ggw/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ggw.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ggw.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ggw.dir/flags.make

CMakeFiles/ggw.dir/main.cpp.o: CMakeFiles/ggw.dir/flags.make
CMakeFiles/ggw.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chenguowei/CLionProjects/ggw/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ggw.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ggw.dir/main.cpp.o -c /Users/chenguowei/CLionProjects/ggw/main.cpp

CMakeFiles/ggw.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ggw.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chenguowei/CLionProjects/ggw/main.cpp > CMakeFiles/ggw.dir/main.cpp.i

CMakeFiles/ggw.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ggw.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chenguowei/CLionProjects/ggw/main.cpp -o CMakeFiles/ggw.dir/main.cpp.s

CMakeFiles/ggw.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/ggw.dir/main.cpp.o.requires

CMakeFiles/ggw.dir/main.cpp.o.provides: CMakeFiles/ggw.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/ggw.dir/build.make CMakeFiles/ggw.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/ggw.dir/main.cpp.o.provides

CMakeFiles/ggw.dir/main.cpp.o.provides.build: CMakeFiles/ggw.dir/main.cpp.o


CMakeFiles/ggw.dir/src/Selector.cpp.o: CMakeFiles/ggw.dir/flags.make
CMakeFiles/ggw.dir/src/Selector.cpp.o: ../src/Selector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chenguowei/CLionProjects/ggw/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ggw.dir/src/Selector.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ggw.dir/src/Selector.cpp.o -c /Users/chenguowei/CLionProjects/ggw/src/Selector.cpp

CMakeFiles/ggw.dir/src/Selector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ggw.dir/src/Selector.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chenguowei/CLionProjects/ggw/src/Selector.cpp > CMakeFiles/ggw.dir/src/Selector.cpp.i

CMakeFiles/ggw.dir/src/Selector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ggw.dir/src/Selector.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chenguowei/CLionProjects/ggw/src/Selector.cpp -o CMakeFiles/ggw.dir/src/Selector.cpp.s

CMakeFiles/ggw.dir/src/Selector.cpp.o.requires:

.PHONY : CMakeFiles/ggw.dir/src/Selector.cpp.o.requires

CMakeFiles/ggw.dir/src/Selector.cpp.o.provides: CMakeFiles/ggw.dir/src/Selector.cpp.o.requires
	$(MAKE) -f CMakeFiles/ggw.dir/build.make CMakeFiles/ggw.dir/src/Selector.cpp.o.provides.build
.PHONY : CMakeFiles/ggw.dir/src/Selector.cpp.o.provides

CMakeFiles/ggw.dir/src/Selector.cpp.o.provides.build: CMakeFiles/ggw.dir/src/Selector.cpp.o


CMakeFiles/ggw.dir/src/SockListen.cpp.o: CMakeFiles/ggw.dir/flags.make
CMakeFiles/ggw.dir/src/SockListen.cpp.o: ../src/SockListen.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chenguowei/CLionProjects/ggw/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ggw.dir/src/SockListen.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ggw.dir/src/SockListen.cpp.o -c /Users/chenguowei/CLionProjects/ggw/src/SockListen.cpp

CMakeFiles/ggw.dir/src/SockListen.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ggw.dir/src/SockListen.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chenguowei/CLionProjects/ggw/src/SockListen.cpp > CMakeFiles/ggw.dir/src/SockListen.cpp.i

CMakeFiles/ggw.dir/src/SockListen.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ggw.dir/src/SockListen.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chenguowei/CLionProjects/ggw/src/SockListen.cpp -o CMakeFiles/ggw.dir/src/SockListen.cpp.s

CMakeFiles/ggw.dir/src/SockListen.cpp.o.requires:

.PHONY : CMakeFiles/ggw.dir/src/SockListen.cpp.o.requires

CMakeFiles/ggw.dir/src/SockListen.cpp.o.provides: CMakeFiles/ggw.dir/src/SockListen.cpp.o.requires
	$(MAKE) -f CMakeFiles/ggw.dir/build.make CMakeFiles/ggw.dir/src/SockListen.cpp.o.provides.build
.PHONY : CMakeFiles/ggw.dir/src/SockListen.cpp.o.provides

CMakeFiles/ggw.dir/src/SockListen.cpp.o.provides.build: CMakeFiles/ggw.dir/src/SockListen.cpp.o


CMakeFiles/ggw.dir/src/Connection.cpp.o: CMakeFiles/ggw.dir/flags.make
CMakeFiles/ggw.dir/src/Connection.cpp.o: ../src/Connection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chenguowei/CLionProjects/ggw/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ggw.dir/src/Connection.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ggw.dir/src/Connection.cpp.o -c /Users/chenguowei/CLionProjects/ggw/src/Connection.cpp

CMakeFiles/ggw.dir/src/Connection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ggw.dir/src/Connection.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chenguowei/CLionProjects/ggw/src/Connection.cpp > CMakeFiles/ggw.dir/src/Connection.cpp.i

CMakeFiles/ggw.dir/src/Connection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ggw.dir/src/Connection.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chenguowei/CLionProjects/ggw/src/Connection.cpp -o CMakeFiles/ggw.dir/src/Connection.cpp.s

CMakeFiles/ggw.dir/src/Connection.cpp.o.requires:

.PHONY : CMakeFiles/ggw.dir/src/Connection.cpp.o.requires

CMakeFiles/ggw.dir/src/Connection.cpp.o.provides: CMakeFiles/ggw.dir/src/Connection.cpp.o.requires
	$(MAKE) -f CMakeFiles/ggw.dir/build.make CMakeFiles/ggw.dir/src/Connection.cpp.o.provides.build
.PHONY : CMakeFiles/ggw.dir/src/Connection.cpp.o.provides

CMakeFiles/ggw.dir/src/Connection.cpp.o.provides.build: CMakeFiles/ggw.dir/src/Connection.cpp.o


CMakeFiles/ggw.dir/src/ConnectionManager.cpp.o: CMakeFiles/ggw.dir/flags.make
CMakeFiles/ggw.dir/src/ConnectionManager.cpp.o: ../src/ConnectionManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chenguowei/CLionProjects/ggw/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ggw.dir/src/ConnectionManager.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ggw.dir/src/ConnectionManager.cpp.o -c /Users/chenguowei/CLionProjects/ggw/src/ConnectionManager.cpp

CMakeFiles/ggw.dir/src/ConnectionManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ggw.dir/src/ConnectionManager.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chenguowei/CLionProjects/ggw/src/ConnectionManager.cpp > CMakeFiles/ggw.dir/src/ConnectionManager.cpp.i

CMakeFiles/ggw.dir/src/ConnectionManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ggw.dir/src/ConnectionManager.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chenguowei/CLionProjects/ggw/src/ConnectionManager.cpp -o CMakeFiles/ggw.dir/src/ConnectionManager.cpp.s

CMakeFiles/ggw.dir/src/ConnectionManager.cpp.o.requires:

.PHONY : CMakeFiles/ggw.dir/src/ConnectionManager.cpp.o.requires

CMakeFiles/ggw.dir/src/ConnectionManager.cpp.o.provides: CMakeFiles/ggw.dir/src/ConnectionManager.cpp.o.requires
	$(MAKE) -f CMakeFiles/ggw.dir/build.make CMakeFiles/ggw.dir/src/ConnectionManager.cpp.o.provides.build
.PHONY : CMakeFiles/ggw.dir/src/ConnectionManager.cpp.o.provides

CMakeFiles/ggw.dir/src/ConnectionManager.cpp.o.provides.build: CMakeFiles/ggw.dir/src/ConnectionManager.cpp.o


CMakeFiles/ggw.dir/src/Service.cpp.o: CMakeFiles/ggw.dir/flags.make
CMakeFiles/ggw.dir/src/Service.cpp.o: ../src/Service.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chenguowei/CLionProjects/ggw/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/ggw.dir/src/Service.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ggw.dir/src/Service.cpp.o -c /Users/chenguowei/CLionProjects/ggw/src/Service.cpp

CMakeFiles/ggw.dir/src/Service.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ggw.dir/src/Service.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chenguowei/CLionProjects/ggw/src/Service.cpp > CMakeFiles/ggw.dir/src/Service.cpp.i

CMakeFiles/ggw.dir/src/Service.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ggw.dir/src/Service.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chenguowei/CLionProjects/ggw/src/Service.cpp -o CMakeFiles/ggw.dir/src/Service.cpp.s

CMakeFiles/ggw.dir/src/Service.cpp.o.requires:

.PHONY : CMakeFiles/ggw.dir/src/Service.cpp.o.requires

CMakeFiles/ggw.dir/src/Service.cpp.o.provides: CMakeFiles/ggw.dir/src/Service.cpp.o.requires
	$(MAKE) -f CMakeFiles/ggw.dir/build.make CMakeFiles/ggw.dir/src/Service.cpp.o.provides.build
.PHONY : CMakeFiles/ggw.dir/src/Service.cpp.o.provides

CMakeFiles/ggw.dir/src/Service.cpp.o.provides.build: CMakeFiles/ggw.dir/src/Service.cpp.o


CMakeFiles/ggw.dir/src/EventLoop.cpp.o: CMakeFiles/ggw.dir/flags.make
CMakeFiles/ggw.dir/src/EventLoop.cpp.o: ../src/EventLoop.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chenguowei/CLionProjects/ggw/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/ggw.dir/src/EventLoop.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ggw.dir/src/EventLoop.cpp.o -c /Users/chenguowei/CLionProjects/ggw/src/EventLoop.cpp

CMakeFiles/ggw.dir/src/EventLoop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ggw.dir/src/EventLoop.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chenguowei/CLionProjects/ggw/src/EventLoop.cpp > CMakeFiles/ggw.dir/src/EventLoop.cpp.i

CMakeFiles/ggw.dir/src/EventLoop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ggw.dir/src/EventLoop.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chenguowei/CLionProjects/ggw/src/EventLoop.cpp -o CMakeFiles/ggw.dir/src/EventLoop.cpp.s

CMakeFiles/ggw.dir/src/EventLoop.cpp.o.requires:

.PHONY : CMakeFiles/ggw.dir/src/EventLoop.cpp.o.requires

CMakeFiles/ggw.dir/src/EventLoop.cpp.o.provides: CMakeFiles/ggw.dir/src/EventLoop.cpp.o.requires
	$(MAKE) -f CMakeFiles/ggw.dir/build.make CMakeFiles/ggw.dir/src/EventLoop.cpp.o.provides.build
.PHONY : CMakeFiles/ggw.dir/src/EventLoop.cpp.o.provides

CMakeFiles/ggw.dir/src/EventLoop.cpp.o.provides.build: CMakeFiles/ggw.dir/src/EventLoop.cpp.o


CMakeFiles/ggw.dir/src/IFdEventCb.cpp.o: CMakeFiles/ggw.dir/flags.make
CMakeFiles/ggw.dir/src/IFdEventCb.cpp.o: ../src/IFdEventCb.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chenguowei/CLionProjects/ggw/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/ggw.dir/src/IFdEventCb.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ggw.dir/src/IFdEventCb.cpp.o -c /Users/chenguowei/CLionProjects/ggw/src/IFdEventCb.cpp

CMakeFiles/ggw.dir/src/IFdEventCb.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ggw.dir/src/IFdEventCb.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chenguowei/CLionProjects/ggw/src/IFdEventCb.cpp > CMakeFiles/ggw.dir/src/IFdEventCb.cpp.i

CMakeFiles/ggw.dir/src/IFdEventCb.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ggw.dir/src/IFdEventCb.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chenguowei/CLionProjects/ggw/src/IFdEventCb.cpp -o CMakeFiles/ggw.dir/src/IFdEventCb.cpp.s

CMakeFiles/ggw.dir/src/IFdEventCb.cpp.o.requires:

.PHONY : CMakeFiles/ggw.dir/src/IFdEventCb.cpp.o.requires

CMakeFiles/ggw.dir/src/IFdEventCb.cpp.o.provides: CMakeFiles/ggw.dir/src/IFdEventCb.cpp.o.requires
	$(MAKE) -f CMakeFiles/ggw.dir/build.make CMakeFiles/ggw.dir/src/IFdEventCb.cpp.o.provides.build
.PHONY : CMakeFiles/ggw.dir/src/IFdEventCb.cpp.o.provides

CMakeFiles/ggw.dir/src/IFdEventCb.cpp.o.provides.build: CMakeFiles/ggw.dir/src/IFdEventCb.cpp.o


CMakeFiles/ggw.dir/src/SocketsOps.cpp.o: CMakeFiles/ggw.dir/flags.make
CMakeFiles/ggw.dir/src/SocketsOps.cpp.o: ../src/SocketsOps.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chenguowei/CLionProjects/ggw/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/ggw.dir/src/SocketsOps.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ggw.dir/src/SocketsOps.cpp.o -c /Users/chenguowei/CLionProjects/ggw/src/SocketsOps.cpp

CMakeFiles/ggw.dir/src/SocketsOps.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ggw.dir/src/SocketsOps.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chenguowei/CLionProjects/ggw/src/SocketsOps.cpp > CMakeFiles/ggw.dir/src/SocketsOps.cpp.i

CMakeFiles/ggw.dir/src/SocketsOps.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ggw.dir/src/SocketsOps.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chenguowei/CLionProjects/ggw/src/SocketsOps.cpp -o CMakeFiles/ggw.dir/src/SocketsOps.cpp.s

CMakeFiles/ggw.dir/src/SocketsOps.cpp.o.requires:

.PHONY : CMakeFiles/ggw.dir/src/SocketsOps.cpp.o.requires

CMakeFiles/ggw.dir/src/SocketsOps.cpp.o.provides: CMakeFiles/ggw.dir/src/SocketsOps.cpp.o.requires
	$(MAKE) -f CMakeFiles/ggw.dir/build.make CMakeFiles/ggw.dir/src/SocketsOps.cpp.o.provides.build
.PHONY : CMakeFiles/ggw.dir/src/SocketsOps.cpp.o.provides

CMakeFiles/ggw.dir/src/SocketsOps.cpp.o.provides.build: CMakeFiles/ggw.dir/src/SocketsOps.cpp.o


CMakeFiles/ggw.dir/src/ggwMain.cpp.o: CMakeFiles/ggw.dir/flags.make
CMakeFiles/ggw.dir/src/ggwMain.cpp.o: ../src/ggwMain.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chenguowei/CLionProjects/ggw/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/ggw.dir/src/ggwMain.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ggw.dir/src/ggwMain.cpp.o -c /Users/chenguowei/CLionProjects/ggw/src/ggwMain.cpp

CMakeFiles/ggw.dir/src/ggwMain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ggw.dir/src/ggwMain.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chenguowei/CLionProjects/ggw/src/ggwMain.cpp > CMakeFiles/ggw.dir/src/ggwMain.cpp.i

CMakeFiles/ggw.dir/src/ggwMain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ggw.dir/src/ggwMain.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chenguowei/CLionProjects/ggw/src/ggwMain.cpp -o CMakeFiles/ggw.dir/src/ggwMain.cpp.s

CMakeFiles/ggw.dir/src/ggwMain.cpp.o.requires:

.PHONY : CMakeFiles/ggw.dir/src/ggwMain.cpp.o.requires

CMakeFiles/ggw.dir/src/ggwMain.cpp.o.provides: CMakeFiles/ggw.dir/src/ggwMain.cpp.o.requires
	$(MAKE) -f CMakeFiles/ggw.dir/build.make CMakeFiles/ggw.dir/src/ggwMain.cpp.o.provides.build
.PHONY : CMakeFiles/ggw.dir/src/ggwMain.cpp.o.provides

CMakeFiles/ggw.dir/src/ggwMain.cpp.o.provides.build: CMakeFiles/ggw.dir/src/ggwMain.cpp.o


# Object files for target ggw
ggw_OBJECTS = \
"CMakeFiles/ggw.dir/main.cpp.o" \
"CMakeFiles/ggw.dir/src/Selector.cpp.o" \
"CMakeFiles/ggw.dir/src/SockListen.cpp.o" \
"CMakeFiles/ggw.dir/src/Connection.cpp.o" \
"CMakeFiles/ggw.dir/src/ConnectionManager.cpp.o" \
"CMakeFiles/ggw.dir/src/Service.cpp.o" \
"CMakeFiles/ggw.dir/src/EventLoop.cpp.o" \
"CMakeFiles/ggw.dir/src/IFdEventCb.cpp.o" \
"CMakeFiles/ggw.dir/src/SocketsOps.cpp.o" \
"CMakeFiles/ggw.dir/src/ggwMain.cpp.o"

# External object files for target ggw
ggw_EXTERNAL_OBJECTS =

ggw: CMakeFiles/ggw.dir/main.cpp.o
ggw: CMakeFiles/ggw.dir/src/Selector.cpp.o
ggw: CMakeFiles/ggw.dir/src/SockListen.cpp.o
ggw: CMakeFiles/ggw.dir/src/Connection.cpp.o
ggw: CMakeFiles/ggw.dir/src/ConnectionManager.cpp.o
ggw: CMakeFiles/ggw.dir/src/Service.cpp.o
ggw: CMakeFiles/ggw.dir/src/EventLoop.cpp.o
ggw: CMakeFiles/ggw.dir/src/IFdEventCb.cpp.o
ggw: CMakeFiles/ggw.dir/src/SocketsOps.cpp.o
ggw: CMakeFiles/ggw.dir/src/ggwMain.cpp.o
ggw: CMakeFiles/ggw.dir/build.make
ggw: CMakeFiles/ggw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/chenguowei/CLionProjects/ggw/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable ggw"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ggw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ggw.dir/build: ggw

.PHONY : CMakeFiles/ggw.dir/build

CMakeFiles/ggw.dir/requires: CMakeFiles/ggw.dir/main.cpp.o.requires
CMakeFiles/ggw.dir/requires: CMakeFiles/ggw.dir/src/Selector.cpp.o.requires
CMakeFiles/ggw.dir/requires: CMakeFiles/ggw.dir/src/SockListen.cpp.o.requires
CMakeFiles/ggw.dir/requires: CMakeFiles/ggw.dir/src/Connection.cpp.o.requires
CMakeFiles/ggw.dir/requires: CMakeFiles/ggw.dir/src/ConnectionManager.cpp.o.requires
CMakeFiles/ggw.dir/requires: CMakeFiles/ggw.dir/src/Service.cpp.o.requires
CMakeFiles/ggw.dir/requires: CMakeFiles/ggw.dir/src/EventLoop.cpp.o.requires
CMakeFiles/ggw.dir/requires: CMakeFiles/ggw.dir/src/IFdEventCb.cpp.o.requires
CMakeFiles/ggw.dir/requires: CMakeFiles/ggw.dir/src/SocketsOps.cpp.o.requires
CMakeFiles/ggw.dir/requires: CMakeFiles/ggw.dir/src/ggwMain.cpp.o.requires

.PHONY : CMakeFiles/ggw.dir/requires

CMakeFiles/ggw.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ggw.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ggw.dir/clean

CMakeFiles/ggw.dir/depend:
	cd /Users/chenguowei/CLionProjects/ggw/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/chenguowei/CLionProjects/ggw /Users/chenguowei/CLionProjects/ggw /Users/chenguowei/CLionProjects/ggw/cmake-build-debug /Users/chenguowei/CLionProjects/ggw/cmake-build-debug /Users/chenguowei/CLionProjects/ggw/cmake-build-debug/CMakeFiles/ggw.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ggw.dir/depend

