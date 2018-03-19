//
// Created by 陈国威 on 2018/2/7.
//
#include <stdio.h>
#include <cstdlib>
#include <iostream>

#include "EventLoop.h"
#include "ConnectionManager.h"

using namespace chen;
using namespace chen::ggw;

int main(int argc, char *argv[])
{
  if (argc == 2)
    {
      int port;
      port = atoi (argv[1]);
      EventLoop eventLoop;
      std::string name = "ggwServer";
      ConnectionManager connectionManager(&eventLoop, port, name);
      connectionManager.start ();
      eventLoop.loop ();

    }
  else
    {
      printf ("usage: %s <port>\n", argv[0]);
    }
}