//
// Created by 陈国威 on 2018/2/7.
//

#include <sys/socket.h>
#include "Connection.h"
#include "EventLoop.h"

#include <errno.h>
#include <stdio.h>

#include <sys/epoll.h>
#include <poll.h>

using namespace chen;
using namespace chen::ggw;

Connection::Connection (EventLoop *loop, const std::string &name, int connfd)
	:loop_(loop),
	 name_(name),
	 IFdEventCb(connfd)
{

}

Connection::~Connection ()
{
	::close (fd_);
}

void Connection::enableReading ()
{
  loop_->addFd (fd_, EPOLLIN, this);
}

void Connection::onFdEvent ()
{
  if ( (revents_ & POLLHUP) && !(revents_ & POLLIN))
	{
	  //close()
		onFdCloseEvent ();
	}

  if (revents_ & EPOLLOUT)
	{
	  onFdWriteEvent ();
	}
  if (revents_ & (POLLIN | POLLPRI | POLLRDHUP))
	{
	  onFdReadEvent ();
	}
  if(revents_ & POLLNVAL)
	{
	  std::cout << "fd =" << fd_ << "Connection::onFdEvent() POLLNVAl\n";
	}
  if (revents_ & (POLLERR | POLLNVAL))
	{
	  //errno handler
	}

}

void Connection::onFdReadEvent ()
{
  char buf[1024]={0};

  int savedErrno = 0;
  //recv(fd, buf, sizeof buf, MEG_PEEK) 会不停的读取数据
  ssize_t n = ::recv(fd_, buf, sizeof (buf), 0);
  if (n > 0)
	{
	  ::printf ("recevice data = %s\n", buf);
	}
  else if (n == 0)
	{ //客户端主动关闭
	  onFdCloseEvent ();
	}
  else
	{
	  errno = savedErrno;
	  //handle errno
	}

}

void Connection::onFdCloseEvent ()
{
  loop_->delFd (fd_, this);
  if (closeCallback_)
	{
	  closeCallback_(shared_from_this());
	}
}

void Connection::onFdWriteEvent ()
{

}