cmake_minimum_required(VERSION 3.9)
project(ggw)

set(CMAKE_CXX_STANDARD 11)

add_executable(ggw main.cpp src/Selector.cpp src/Selector.h src/SockListen.cpp src/SockListen.h src/Connection.cpp src/Connection.h src/ConnectionManager.cpp src/ConnectionManager.h src/Service.cpp src/Service.h src/EventLoop.cpp src/EventLoop.h src/IFdEventCb.cpp src/IFdEventCb.h src/SocketsOps.cpp src/SocketsOps.h src/ggwMain.cpp src/Callbacks.h)