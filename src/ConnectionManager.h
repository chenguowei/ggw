//
// Created by 陈国威 on 2018/2/7.
//

#ifndef GGW_CONNCETIONMANAGER_H
#define GGW_CONNCETIONMANAGER_H

#include <vector>
#include <map>
#include <iostream>
#include <boost/scoped_ptr.hpp>
#include "Callbacks.h"

namespace chen
{
namespace ggw
{

class Connection;
class EventLoop;
class SockListen;

class ConnectionManager
{
 public:
  ConnectionManager(EventLoop* loop, int port, std::string& name);
  ~ConnectionManager ();

  void start();


 private:

  void newConnection(int connfd);

  void removeConnection(const ConnectionPtr& conn);

  typedef std::map<std::string, ConnectionPtr>	connectionList;

  EventLoop*		loop_;
  connectionList	connnections_;
  int 				nextConnId_;
  std::string		name_;
  boost::scoped_ptr<SockListen>	socklisten_;

};


}
}



#endif //GGW_CONNCETIONMANAGER_H
