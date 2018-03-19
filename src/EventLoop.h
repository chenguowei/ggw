//
// Created by 陈国威 on 2018/2/7.
//

#ifndef GGW_EVENTLOOP_H
#define GGW_EVENTLOOP_H

#include <vector>

#include <boost/scoped_ptr.hpp>

namespace chen
{
namespace ggw
{

class Selector;
class IFdEventCb;


class EventLoop
{
 public:
  EventLoop();
  ~EventLoop ();


  void loop();

  void addFd(int fd, int optor, IFdEventCb* eventCb);

  void modFd(int fd, int optor, IFdEventCb* eventCb);

  void delFd(int fd, IFdEventCb* eventCb);

 private:
  typedef std::vector<IFdEventCb*> IFdEventList;

  boost::scoped_ptr<Selector>		selector_;

  IFdEventList		activeEvents_;
  IFdEventCb*		currentEvent_;
};

}
}


#endif //GGW_EVENTLOOP_H
