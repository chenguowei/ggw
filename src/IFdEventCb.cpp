//
// Created by 陈国威 on 2018/2/7.
//

#include "IFdEventCb.h"

using namespace chen;
using namespace chen::ggw;

IFdEventCb::IFdEventCb (int fd)
	:fd_(fd),
	 revents_(-1)
{

}

IFdEventCb::~IFdEventCb ()
{

}