// Generated by gencpp from file n_led/led_onResponse.msg
// DO NOT EDIT!


#ifndef N_LED_MESSAGE_LED_ONRESPONSE_H
#define N_LED_MESSAGE_LED_ONRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace n_led
{
template <class ContainerAllocator>
struct led_onResponse_
{
  typedef led_onResponse_<ContainerAllocator> Type;

  led_onResponse_()
    : res()  {
    }
  led_onResponse_(const ContainerAllocator& _alloc)
    : res(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _res_type;
  _res_type res;





  typedef boost::shared_ptr< ::n_led::led_onResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::n_led::led_onResponse_<ContainerAllocator> const> ConstPtr;

}; // struct led_onResponse_

typedef ::n_led::led_onResponse_<std::allocator<void> > led_onResponse;

typedef boost::shared_ptr< ::n_led::led_onResponse > led_onResponsePtr;
typedef boost::shared_ptr< ::n_led::led_onResponse const> led_onResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::n_led::led_onResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::n_led::led_onResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace n_led

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/lunar/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::n_led::led_onResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::n_led::led_onResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::n_led::led_onResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::n_led::led_onResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::n_led::led_onResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::n_led::led_onResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::n_led::led_onResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "53af918a2a4a2a182c184142fff49b0c";
  }

  static const char* value(const ::n_led::led_onResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x53af918a2a4a2a18ULL;
  static const uint64_t static_value2 = 0x2c184142fff49b0cULL;
};

template<class ContainerAllocator>
struct DataType< ::n_led::led_onResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "n_led/led_onResponse";
  }

  static const char* value(const ::n_led::led_onResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::n_led::led_onResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string res\n\
\n\
";
  }

  static const char* value(const ::n_led::led_onResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::n_led::led_onResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.res);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct led_onResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::n_led::led_onResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::n_led::led_onResponse_<ContainerAllocator>& v)
  {
    s << indent << "res: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.res);
  }
};

} // namespace message_operations
} // namespace ros

#endif // N_LED_MESSAGE_LED_ONRESPONSE_H
