//
// Created by 陈国威 on 2018/2/7.
//

#ifndef GGW_IFDEVENTCB_H
#define GGW_IFDEVENTCB_H

namespace chen
{
namespace ggw
{

class IFdEventCb
{
 public:
  IFdEventCb(int fd);
  virtual ~IFdEventCb ();

  virtual void onFdEvent()=0;

  void set_revents(int revents)
  { revents_ = revents; }

  int fd() const
  { return fd_; }

 protected:
  int 	revents_;
  int	fd_;

};

}
}


#endif //GGW_IFDEVENTCB_H
