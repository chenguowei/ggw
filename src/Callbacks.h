//
// Created by 陈国威 on 2018/2/7.
//

#ifndef GGW_CALLBACKS_H
#define GGW_CALLBACKS_H

#include <boost/function.hpp>
#include <boost/shared_ptr.hpp>

namespace chen
{
namespace ggw
{

class Connection;

typedef boost::shared_ptr<Connection>	ConnectionPtr;

typedef boost::function<void(const ConnectionPtr&)>	CloseCallback;

}
}

#endif //GGW_CALLBACKS_H
