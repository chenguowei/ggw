//
// Created by 陈国威 on 2018/2/7.
//

#ifndef GGW_SOCKLISTEN_H
#define GGW_SOCKLISTEN_H

#include "IFdEventCb.h"
#include <boost/function.hpp>
#include <sys/socket.h>

namespace chen
{
namespace ggw
{

class EventLoop;

class SockListen : public IFdEventCb
{
 public:
  typedef boost::function<void(int connfd)>		NewConnectionCallback;

  SockListen(EventLoop* loop, int port);
  ~SockListen ();

  virtual void onFdEvent();

  void setNewConnectionCallback(const NewConnectionCallback& cb)
  { newConnectionCallback_ = cb; }

  void Init();

  void bind();

  void set_reuseAddr(bool on);

  void set_keep(bool on);

  void setNonBlocking();

  void listen();

 private:
  EventLoop*	loop_;
  NewConnectionCallback	newConnectionCallback_;
  int 			port_;
};

}
}


#endif //GGW_SOCKLISTEN_H
