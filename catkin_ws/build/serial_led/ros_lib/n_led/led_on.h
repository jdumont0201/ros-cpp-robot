#ifndef _ROS_SERVICE_led_on_h
#define _ROS_SERVICE_led_on_h
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace n_led
{

static const char LED_ON[] = "n_led/led_on";

  class led_onRequest : public ros::Msg
  {
    public:
      typedef bool _status_type;
      _status_type status;

    led_onRequest():
      status(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      union {
        bool real;
        uint8_t base;
      } u_status;
      u_status.real = this->status;
      *(outbuffer + offset + 0) = (u_status.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->status);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      union {
        bool real;
        uint8_t base;
      } u_status;
      u_status.base = 0;
      u_status.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->status = u_status.real;
      offset += sizeof(this->status);
     return offset;
    }

    const char * getType(){ return LED_ON; };
    const char * getMD5(){ return "3a1255d4d998bd4d6585c64639b5ee9a"; };

  };

  class led_onResponse : public ros::Msg
  {
    public:
      typedef const char* _res_type;
      _res_type res;

    led_onResponse():
      res("")
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      uint32_t length_res = strlen(this->res);
      varToArr(outbuffer + offset, length_res);
      offset += 4;
      memcpy(outbuffer + offset, this->res, length_res);
      offset += length_res;
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      uint32_t length_res;
      arrToVar(length_res, (inbuffer + offset));
      offset += 4;
      for(unsigned int k= offset; k< offset+length_res; ++k){
          inbuffer[k-1]=inbuffer[k];
      }
      inbuffer[offset+length_res-1]=0;
      this->res = (char *)(inbuffer + offset-1);
      offset += length_res;
     return offset;
    }

    const char * getType(){ return LED_ON; };
    const char * getMD5(){ return "53af918a2a4a2a182c184142fff49b0c"; };

  };

  class led_on {
    public:
    typedef led_onRequest Request;
    typedef led_onResponse Response;
  };

}
#endif
