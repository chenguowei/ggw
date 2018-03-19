//
// Created by 陈国威 on 2018/2/7.
//

#include "ConnectionManager.h"

#include "EventLoop.h"
#include "SockListen.h"
#include "Connection.h"
#include "Callbacks.h"

#include <cstdio>
#include <boost/bind.hpp>

using namespace chen;
using namespace chen::ggw;

ConnectionManager::ConnectionManager (EventLoop *loop, int port, std::string& name)
	:loop_(loop),
	 socklisten_(new SockListen(loop, port)),
	 nextConnId_(1),
	 name_(name)
{
  socklisten_->setNonBlocking ();
  socklisten_->bind ();
  socklisten_->setNewConnectionCallback (
	  boost::bind(&ConnectionManager::newConnection, this, _1)
  );

}

ConnectionManager::~ConnectionManager ()
{

}

void ConnectionManager::start()
{
  socklisten_->listen ();
}

void ConnectionManager::newConnection (int connfd)
{
  char buf[64];
  snprintf (buf, sizeof buf, "-%d#%d", connfd, nextConnId_);
  ++nextConnId_;
  std::string connName = name_+ buf;

  std::cout << connName << " connected \n";

  ConnectionPtr conn(new Connection(loop_, connName, connfd));

  conn->enableReading ();
  connnections_[connName] = conn;
  conn->setCloseCallback (
	  boost::bind (&ConnectionManager::removeConnection, this, _1)
  );
}

void ConnectionManager::removeConnection (const ConnectionPtr &conn)
{
  std::cout << conn->name () << " close \n";
  size_t n = connnections_.erase (conn->name());
  (void)n;
  assert (n == 1);
}