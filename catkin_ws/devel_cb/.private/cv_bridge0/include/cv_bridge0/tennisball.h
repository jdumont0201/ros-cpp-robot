// Generated by gencpp from file cv_bridge0/tennisball.msg
// DO NOT EDIT!


#ifndef CV_BRIDGE0_MESSAGE_TENNISBALL_H
#define CV_BRIDGE0_MESSAGE_TENNISBALL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cv_bridge0
{
template <class ContainerAllocator>
struct tennisball_
{
  typedef tennisball_<ContainerAllocator> Type;

  tennisball_()
    : x(0.0)
    , y(0.0)
    , yellow(0.0)  {
    }
  tennisball_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , yellow(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _yellow_type;
  _yellow_type yellow;





  typedef boost::shared_ptr< ::cv_bridge0::tennisball_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cv_bridge0::tennisball_<ContainerAllocator> const> ConstPtr;

}; // struct tennisball_

typedef ::cv_bridge0::tennisball_<std::allocator<void> > tennisball;

typedef boost::shared_ptr< ::cv_bridge0::tennisball > tennisballPtr;
typedef boost::shared_ptr< ::cv_bridge0::tennisball const> tennisballConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cv_bridge0::tennisball_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cv_bridge0::tennisball_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace cv_bridge0

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/lunar/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/lunar/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/lunar/share/sensor_msgs/cmake/../msg'], 'cv_bridge0': ['/home/jbmdumont/catkin_ws/src/cv_bridge0/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::cv_bridge0::tennisball_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cv_bridge0::tennisball_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cv_bridge0::tennisball_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cv_bridge0::tennisball_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cv_bridge0::tennisball_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cv_bridge0::tennisball_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cv_bridge0::tennisball_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bdcda111f82f57264f6041cdebbe800e";
  }

  static const char* value(const ::cv_bridge0::tennisball_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbdcda111f82f5726ULL;
  static const uint64_t static_value2 = 0x4f6041cdebbe800eULL;
};

template<class ContainerAllocator>
struct DataType< ::cv_bridge0::tennisball_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cv_bridge0/tennisball";
  }

  static const char* value(const ::cv_bridge0::tennisball_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cv_bridge0::tennisball_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n\
float32 y\n\
float32 yellow\n\
";
  }

  static const char* value(const ::cv_bridge0::tennisball_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cv_bridge0::tennisball_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.yellow);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct tennisball_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cv_bridge0::tennisball_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cv_bridge0::tennisball_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "yellow: ";
    Printer<float>::stream(s, indent + "  ", v.yellow);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CV_BRIDGE0_MESSAGE_TENNISBALL_H
