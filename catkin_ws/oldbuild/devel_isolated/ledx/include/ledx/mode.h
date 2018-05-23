// Generated by gencpp from file ledx/mode.msg
// DO NOT EDIT!


#ifndef LEDX_MESSAGE_MODE_H
#define LEDX_MESSAGE_MODE_H

#include <ros/service_traits.h>


#include <ledx/modeRequest.h>
#include <ledx/modeResponse.h>


namespace ledx
{

struct mode
{

typedef modeRequest Request;
typedef modeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct mode
} // namespace ledx


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ledx::mode > {
  static const char* value()
  {
    return "814e642bc814671de4b77b9a585ee0c6";
  }

  static const char* value(const ::ledx::mode&) { return value(); }
};

template<>
struct DataType< ::ledx::mode > {
  static const char* value()
  {
    return "ledx/mode";
  }

  static const char* value(const ::ledx::mode&) { return value(); }
};


// service_traits::MD5Sum< ::ledx::modeRequest> should match 
// service_traits::MD5Sum< ::ledx::mode > 
template<>
struct MD5Sum< ::ledx::modeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ledx::mode >::value();
  }
  static const char* value(const ::ledx::modeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ledx::modeRequest> should match 
// service_traits::DataType< ::ledx::mode > 
template<>
struct DataType< ::ledx::modeRequest>
{
  static const char* value()
  {
    return DataType< ::ledx::mode >::value();
  }
  static const char* value(const ::ledx::modeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ledx::modeResponse> should match 
// service_traits::MD5Sum< ::ledx::mode > 
template<>
struct MD5Sum< ::ledx::modeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ledx::mode >::value();
  }
  static const char* value(const ::ledx::modeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ledx::modeResponse> should match 
// service_traits::DataType< ::ledx::mode > 
template<>
struct DataType< ::ledx::modeResponse>
{
  static const char* value()
  {
    return DataType< ::ledx::mode >::value();
  }
  static const char* value(const ::ledx::modeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LEDX_MESSAGE_MODE_H
