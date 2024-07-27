#ifndef _ROS_msg_pkg_carry_h
#define _ROS_msg_pkg_carry_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace msg_pkg
{

  class carry : public ros::Msg
  {
    public:
      typedef const char* _grade_type;
      _grade_type grade;
      typedef int64_t _star_type;
      _star_type star;
      typedef const char* _data_type;
      _data_type data;

    carry():
      grade(""),
      star(0),
      data("")
    {
    }

    virtual int serialize(unsigned char *outbuffer) const override
    {
      int offset = 0;
      uint32_t length_grade = strlen(this->grade);
      varToArr(outbuffer + offset, length_grade);
      offset += 4;
      memcpy(outbuffer + offset, this->grade, length_grade);
      offset += length_grade;
      union {
        int64_t real;
        uint64_t base;
      } u_star;
      u_star.real = this->star;
      *(outbuffer + offset + 0) = (u_star.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_star.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_star.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_star.base >> (8 * 3)) & 0xFF;
      *(outbuffer + offset + 4) = (u_star.base >> (8 * 4)) & 0xFF;
      *(outbuffer + offset + 5) = (u_star.base >> (8 * 5)) & 0xFF;
      *(outbuffer + offset + 6) = (u_star.base >> (8 * 6)) & 0xFF;
      *(outbuffer + offset + 7) = (u_star.base >> (8 * 7)) & 0xFF;
      offset += sizeof(this->star);
      uint32_t length_data = strlen(this->data);
      varToArr(outbuffer + offset, length_data);
      offset += 4;
      memcpy(outbuffer + offset, this->data, length_data);
      offset += length_data;
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer) override
    {
      int offset = 0;
      uint32_t length_grade;
      arrToVar(length_grade, (inbuffer + offset));
      offset += 4;
      for(unsigned int k= offset; k< offset+length_grade; ++k){
          inbuffer[k-1]=inbuffer[k];
      }
      inbuffer[offset+length_grade-1]=0;
      this->grade = (char *)(inbuffer + offset-1);
      offset += length_grade;
      union {
        int64_t real;
        uint64_t base;
      } u_star;
      u_star.base = 0;
      u_star.base |= ((uint64_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_star.base |= ((uint64_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_star.base |= ((uint64_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_star.base |= ((uint64_t) (*(inbuffer + offset + 3))) << (8 * 3);
      u_star.base |= ((uint64_t) (*(inbuffer + offset + 4))) << (8 * 4);
      u_star.base |= ((uint64_t) (*(inbuffer + offset + 5))) << (8 * 5);
      u_star.base |= ((uint64_t) (*(inbuffer + offset + 6))) << (8 * 6);
      u_star.base |= ((uint64_t) (*(inbuffer + offset + 7))) << (8 * 7);
      this->star = u_star.real;
      offset += sizeof(this->star);
      uint32_t length_data;
      arrToVar(length_data, (inbuffer + offset));
      offset += 4;
      for(unsigned int k= offset; k< offset+length_data; ++k){
          inbuffer[k-1]=inbuffer[k];
      }
      inbuffer[offset+length_data-1]=0;
      this->data = (char *)(inbuffer + offset-1);
      offset += length_data;
     return offset;
    }

    virtual const char * getType() override { return "msg_pkg/carry"; };
    virtual const char * getMD5() override { return "de2ab20ee92a64b24367da18405f9c78"; };

  };

}
#endif
