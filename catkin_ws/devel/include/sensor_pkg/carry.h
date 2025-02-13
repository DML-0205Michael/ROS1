// Generated by gencpp from file sensor_pkg/carry.msg
// DO NOT EDIT!


#ifndef SENSOR_PKG_MESSAGE_CARRY_H
#define SENSOR_PKG_MESSAGE_CARRY_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace sensor_pkg
{
template <class ContainerAllocator>
struct carry_
{
  typedef carry_<ContainerAllocator> Type;

  carry_()
    : grade()
    , star(0)
    , data()  {
    }
  carry_(const ContainerAllocator& _alloc)
    : grade(_alloc)
    , star(0)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _grade_type;
  _grade_type grade;

   typedef int64_t _star_type;
  _star_type star;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::sensor_pkg::carry_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sensor_pkg::carry_<ContainerAllocator> const> ConstPtr;

}; // struct carry_

typedef ::sensor_pkg::carry_<std::allocator<void> > carry;

typedef boost::shared_ptr< ::sensor_pkg::carry > carryPtr;
typedef boost::shared_ptr< ::sensor_pkg::carry const> carryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sensor_pkg::carry_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sensor_pkg::carry_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sensor_pkg::carry_<ContainerAllocator1> & lhs, const ::sensor_pkg::carry_<ContainerAllocator2> & rhs)
{
  return lhs.grade == rhs.grade &&
    lhs.star == rhs.star &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sensor_pkg::carry_<ContainerAllocator1> & lhs, const ::sensor_pkg::carry_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sensor_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::sensor_pkg::carry_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensor_pkg::carry_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sensor_pkg::carry_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sensor_pkg::carry_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_pkg::carry_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_pkg::carry_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sensor_pkg::carry_<ContainerAllocator> >
{
  static const char* value()
  {
    return "de2ab20ee92a64b24367da18405f9c78";
  }

  static const char* value(const ::sensor_pkg::carry_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xde2ab20ee92a64b2ULL;
  static const uint64_t static_value2 = 0x4367da18405f9c78ULL;
};

template<class ContainerAllocator>
struct DataType< ::sensor_pkg::carry_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_pkg/carry";
  }

  static const char* value(const ::sensor_pkg::carry_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sensor_pkg::carry_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string grade\n"
"int64 star\n"
"string data\n"
;
  }

  static const char* value(const ::sensor_pkg::carry_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sensor_pkg::carry_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.grade);
      stream.next(m.star);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct carry_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sensor_pkg::carry_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sensor_pkg::carry_<ContainerAllocator>& v)
  {
    s << indent << "grade: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.grade);
    s << indent << "star: ";
    Printer<int64_t>::stream(s, indent + "  ", v.star);
    s << indent << "data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SENSOR_PKG_MESSAGE_CARRY_H
