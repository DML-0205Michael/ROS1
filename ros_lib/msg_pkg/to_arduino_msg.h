#ifndef _ROS_msg_pkg_to_arduino_msg_h
#define _ROS_msg_pkg_to_arduino_msg_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace msg_pkg
{

  class to_arduino_msg : public ros::Msg
  {
    public:
      typedef float _M1_speed_type;
      _M1_speed_type M1_speed;
      typedef float _M2_speed_type;
      _M2_speed_type M2_speed;
      typedef int32_t _M1_encoder_speed_type;
      _M1_encoder_speed_type M1_encoder_speed;
      typedef int32_t _M2_encoder_speed_type;
      _M2_encoder_speed_type M2_encoder_speed;

    to_arduino_msg():
      M1_speed(0),
      M2_speed(0),
      M1_encoder_speed(0),
      M2_encoder_speed(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const override
    {
      int offset = 0;
      union {
        float real;
        uint32_t base;
      } u_M1_speed;
      u_M1_speed.real = this->M1_speed;
      *(outbuffer + offset + 0) = (u_M1_speed.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_M1_speed.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_M1_speed.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_M1_speed.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->M1_speed);
      union {
        float real;
        uint32_t base;
      } u_M2_speed;
      u_M2_speed.real = this->M2_speed;
      *(outbuffer + offset + 0) = (u_M2_speed.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_M2_speed.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_M2_speed.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_M2_speed.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->M2_speed);
      union {
        int32_t real;
        uint32_t base;
      } u_M1_encoder_speed;
      u_M1_encoder_speed.real = this->M1_encoder_speed;
      *(outbuffer + offset + 0) = (u_M1_encoder_speed.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_M1_encoder_speed.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_M1_encoder_speed.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_M1_encoder_speed.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->M1_encoder_speed);
      union {
        int32_t real;
        uint32_t base;
      } u_M2_encoder_speed;
      u_M2_encoder_speed.real = this->M2_encoder_speed;
      *(outbuffer + offset + 0) = (u_M2_encoder_speed.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_M2_encoder_speed.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_M2_encoder_speed.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_M2_encoder_speed.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->M2_encoder_speed);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer) override
    {
      int offset = 0;
      union {
        float real;
        uint32_t base;
      } u_M1_speed;
      u_M1_speed.base = 0;
      u_M1_speed.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_M1_speed.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_M1_speed.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_M1_speed.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->M1_speed = u_M1_speed.real;
      offset += sizeof(this->M1_speed);
      union {
        float real;
        uint32_t base;
      } u_M2_speed;
      u_M2_speed.base = 0;
      u_M2_speed.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_M2_speed.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_M2_speed.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_M2_speed.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->M2_speed = u_M2_speed.real;
      offset += sizeof(this->M2_speed);
      union {
        int32_t real;
        uint32_t base;
      } u_M1_encoder_speed;
      u_M1_encoder_speed.base = 0;
      u_M1_encoder_speed.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_M1_encoder_speed.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_M1_encoder_speed.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_M1_encoder_speed.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->M1_encoder_speed = u_M1_encoder_speed.real;
      offset += sizeof(this->M1_encoder_speed);
      union {
        int32_t real;
        uint32_t base;
      } u_M2_encoder_speed;
      u_M2_encoder_speed.base = 0;
      u_M2_encoder_speed.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_M2_encoder_speed.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_M2_encoder_speed.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_M2_encoder_speed.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->M2_encoder_speed = u_M2_encoder_speed.real;
      offset += sizeof(this->M2_encoder_speed);
     return offset;
    }

    virtual const char * getType() override { return "msg_pkg/to_arduino_msg"; };
    virtual const char * getMD5() override { return "71a226260b511ec21d1286ef6c684eb7"; };

  };

}
#endif
