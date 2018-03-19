//
// Created by 陈国威 on 2018/2/7.
//

#include "EventLoop.h"
#include "Selector.h"
#include "IFdEventCb.h"

using namespace chen;
using namespace chen::ggw;

namespace
{
	const int kPollTimeMs = 10000;
}

EventLoop::EventLoop ()
	:selector_(new Selector(this)),
	 currentEvent_(NULL)
{

}

EventLoop::~EventLoop ()
{

}

void EventLoop::loop ()
{
  while (true)
	{
	  activeEvents_.clear ();
	  selector_->loop (kPollTimeMs, &activeEvents_);

	  for (IFdEventList::iterator it = activeEvents_.begin ();
		  it != activeEvents_.end (); ++it)
		{
		  currentEvent_ = *it;
		  currentEvent_->onFdEvent ();
		}
	  currentEvent_ = NULL;
	}
}

void EventLoop::addFd(int fd, int opr, IFdEventCb* eventCb)
{
  selector_->addFd (fd, opr, eventCb);
}

void EventLoop::modFd (int fd, int optor, IFdEventCb *eventCb)
{
  selector_->modFd (fd, optor, eventCb);
}

void EventLoop::delFd (int fd, IFdEventCb* eventCb)
{
  selector_->delFd (fd, eventCb);
}

