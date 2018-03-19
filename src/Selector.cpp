//
// Created by 陈国威 on 2018/2/7.
//


#include "Selector.h"
#include "IFdEventCb.h"

#include <sys/socket.h>
#include <unistd.h>
#include <errno.h>
#include <iostream>

using namespace chen;
using namespace chen::ggw;

Selector::Selector (EventLoop* loop)
	:eventfd_(-1),
	 maxEvents_(0),
	 events_(kInitEventListSize),
	 loop_(loop)
{
	Init (1024);
}

Selector::~Selector ()
{
  if (eventfd_ != -1)
	{
	  ::close(eventfd_);
	}

  if (events_.size () > 0)
	{
	  events_.clear ();
	}
  maxEvents_ = 0;
}

int Selector::Init (int maxEvents)
{
  eventfd_ = epoll_create(maxEvents);
  if (eventfd_ < 0)
	{
	  return -2;
	}

  maxEvents_ = maxEvents;
}

int Selector::loop (int mSecs, FdEventCbList* activeEvents)
{

  int ret;
  int numEvents = ::epoll_wait(eventfd_,
  								&*events_.begin(),
							   static_cast<int>(events_.size ()),
  								mSecs);

  int saveErrno = errno;
  if (numEvents > 0)
	{
	  //std::cout << numEvents << " events happended\n";
	  fillActiveEvents (numEvents, activeEvents);
	  if (static_cast<size_t>(numEvents) == events_.size ())
		{
		  events_.resize (events_.size () * 2);
		}
	}
  else if (numEvents == 0)
	{
		std::cout << "nothing happended\n";
	}
  else
	{
	  if (saveErrno != EINTR) //打断信息
		{
		  errno = saveErrno;
		  std::cout << "numEvents=" << numEvents << "\n";
		  std::cout << "Selector::loop errno=" << errno << "\n";
		}
	}

  return numEvents;
}

void Selector::fillActiveEvents (int numEvnets, FdEventCbList *activeEvents)
{
  int events;
  for (int i = 0; i < numEvnets; ++i)
	{
	  IFdEventCb* eventCb = (IFdEventCb*)events_[i].data.ptr;
	  events = events_[i].events;
	  eventCb->set_revents (events);
	  activeEvents->push_back (eventCb);

	}
}

int Selector::addFd (int fd, int events, IFdEventCb *pIfFdCb)
{
  int ret;
  struct epoll_event event;
  event.events = events;
  event.data.ptr = pIfFdCb;
  ret = ::epoll_ctl(eventfd_, EPOLL_CTL_ADD, fd, &event);
  if (ret <  0)
	{
	  return -1;
	}
  else
	{
	  fdEventCbMap_[fd] = pIfFdCb;
	}
  return ret;
}

int Selector::modFd (int fd, int events, IFdEventCb *pIfFdCb)
{
  int ret;
  struct epoll_event	event;
  event.events = events;
  event.data.ptr = pIfFdCb;

  ret = ::epoll_ctl(eventfd_, EPOLL_CTL_MOD, fd, &event);
  if (ret < 0)
	{
	  return -1;
	}

  return ret;
}

int Selector::delFd (int fd, IFdEventCb *pIfFdCb)
{
  int ret;
  struct epoll_event event;
  event.events = 0;
  event.data.ptr = NULL;
  ret = ::epoll_ctl(eventfd_, EPOLL_CTL_DEL, fd, &event);
  if (ret < 0)
	{
	  return -1;
	}

  return ret;
}