//
// Created by 陈国威 on 2018/2/7.
//

#ifndef GGW_CONNCTION_H
#define GGW_CONNCTION_H

#include <unistd.h>
#include <stdlib.h>
#include "IFdEventCb.h"
#include "Callbacks.h"
#include <iostream>

#include <boost/enable_shared_from_this.hpp>
#include <boost/shared_ptr.hpp>

namespace chen
{
namespace ggw
{

class EventLoop;

class Connection : public IFdEventCb,
					public boost::enable_shared_from_this<Connection>
{

 public:
  Connection(EventLoop* loop, const std::string& name, int connfd);
  ~Connection ();

  int Init(int selIndex, int fd, int index, unsigned int crtTime);
  void close();

  virtual void onFdEvent();


  void setCloseCallback(const CloseCallback& cb)
  { closeCallback_ = cb; }

  void enableReading();

  const std::string& name() const { return name_; }
 private:

  void onFdCloseEvent();
  void onFdReadEvent();
  void onFdWriteEvent();

  EventLoop*	loop_;
  const std::string	name_;
  int 			index_;
  unsigned int  crtTime_;
  int 			selIndex_;
  int		queryId;
  int		state_;

  CloseCallback	closeCallback_;
};

}
}


#endif //GGW_CONNCTION_H
