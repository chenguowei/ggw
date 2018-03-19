//
// Created by 陈国威 on 2018/2/7.
//

#include "SockListen.h"
#include "SocketsOps.h"
#include "EventLoop.h"

#include <unistd.h>
#include <sys/socket.h>
#include <strings.h>
#include <netinet/in.h>
#include <fcntl.h>
#include <sys/epoll.h>
#include <iostream>

using namespace chen;
using namespace chen::ggw;

SockListen::SockListen (EventLoop* loop, int port)
	:IFdEventCb(-1),
	 loop_(loop),
	 port_(port)
{
	Init ();
}

SockListen::~SockListen ()
{
  ::close(fd_);
}

void SockListen::Init ()
{
  fd_ = ::socket (AF_INET, SOCK_STREAM, IPPROTO_TCP);
  if (fd_ < 0)
	{
	  std::cout << "SockListen::socket() fd=" << fd_ << "\n";
	}
}

void SockListen::set_reuseAddr (bool on)
{
  int opt = on ? 1 : 0;
  ::setsockopt (fd_, SOL_SOCKET, SO_REUSEADDR, &opt, static_cast<socklen_t>(sizeof opt));
}

void SockListen::setNonBlocking ()
{
 	sockets::setNonBlocking (fd_);
}

void SockListen::bind ()
{
  struct sockaddr_in addr;
  bzero (&addr, sizeof addr);

  addr.sin_port = htons (port_);
  addr.sin_family = AF_INET;
  addr.sin_addr.s_addr = INADDR_ANY;
  int ret = ::bind (fd_, (struct sockaddr*)&addr, static_cast<socklen_t>(sizeof addr));
  if (ret < 0)
	{
	  std::cout << "SockListen::bind() ret=" << ret <<"\n";
	}
}

void SockListen::listen ()
{
  int ret = ::listen (fd_, SOMAXCONN);
  if (ret < 0)
	{
	  std::cout << "SockListen::listen() ret=" << ret << "\n";
	  return;
	}
  loop_->addFd (fd_, EPOLLIN, this);
}

void SockListen::onFdEvent ()
{
  struct sockaddr	addr;
  bzero(&addr, sizeof addr);
  socklen_t addrlen = static_cast<socklen_t>(sizeof addr);

  int connfd = ::accept (fd_, &addr, &addrlen);

  if (newConnectionCallback_)
	{
	  newConnectionCallback_(connfd);
	}
}