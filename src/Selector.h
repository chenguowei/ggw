//
// Created by 陈国威 on 2018/2/7.
//

#ifndef GGW_SELECTOR_H
#define GGW_SELECTOR_H

#include <vector>
#include <map>
#include "EventLoop.h"

#include <sys/epoll.h>

namespace chen

{
namespace ggw
{

class IFdEventCb;
class EventLoop;

class Selector
{
 public:
  typedef std::vector<IFdEventCb*> FdEventCbList;

  Selector(EventLoop* loop);
  ~Selector ();

  int Init(int maxEvents);

  int loop(int mSecs, FdEventCbList* activeEvents);
  void cleanDelList();

  int addFd(int fd, int events, IFdEventCb* pIfFdCb);
  int modFd(int fd, int events, IFdEventCb* pIfFdCb);
  int delFd(int fd, IFdEventCb* pIfFdCb);

 private:

  static const int kInitEventListSize = 16;

  void fillActiveEvents(int numEvnets, FdEventCbList* activeEvents);
  typedef std::vector<struct epoll_event>	EventList;
  typedef std::map<int, IFdEventCb*>	EventMap;

  EventLoop*		loop_;
  EventList			events_;
  EventMap		fdEventCbMap_;
  int 		eventfd_;
  int 		maxEvents_;

};

}
}



#endif //GGW_SELECTOR_H
