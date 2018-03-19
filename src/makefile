
CC=gcc
CXX=g++

INC= -I/usr/include/boost

TARGET=ggw

LIB=

CFLAGS= -m64 -g -Wall -DDEBUG -lstdc++

OBJ+=./Connection.o \
    ./ConnectionManager.o \
    ./EventLoop.o \
    ./IFdEventCb.o \
    ./Selector.o \
    ./SocketsOps.o \
    ./SockListen.o \
    ./ggwMain.o

$(TARGET): $(OBJ) &
    $(CXX) $(CFLAGS) -o $@ $^

checklink:$(OBJ)
    $(CXX) $(CFLAGS) -0 $@ $^

%.o: %.cpp
    $(CXX) $(CFLAGS) -c -o $@ $<


clean:
    rm -f $(OBJ)
    rm -f $(TARGET)