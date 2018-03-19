//
// Created by 陈国威 on 2018/2/7.
//

#include <fcntl.h>
#include "SocketsOps.h"

using namespace chen;
using namespace chen::ggw;

void sockets::setNonBlocking (int fd)
{
  int flags = ::fcntl (fd, F_GETFL, 0);
  flags |= O_NONBLOCK;
  ::fcntl (fd, F_SETFL, flags);
}