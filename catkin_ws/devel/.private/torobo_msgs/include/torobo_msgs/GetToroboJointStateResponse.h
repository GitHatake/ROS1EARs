// Generated by gencpp from file torobo_msgs/GetToroboJointStateResponse.msg
// DO NOT EDIT!


#ifndef TOROBO_MSGS_MESSAGE_GETTOROBOJOINTSTATERESPONSE_H
#define TOROBO_MSGS_MESSAGE_GETTOROBOJOINTSTATERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <torobo_msgs/ToroboJointState.h>

namespace torobo_msgs
{
template <class ContainerAllocator>
struct GetToroboJointStateResponse_
{
  typedef GetToroboJointStateResponse_<ContainerAllocator> Type;

  GetToroboJointStateResponse_()
    : toroboJointState()  {
    }
  GetToroboJointStateResponse_(const ContainerAllocator& _alloc)
    : toroboJointState(_alloc)  {
  (void)_alloc;
    }



   typedef  ::torobo_msgs::ToroboJointState_<ContainerAllocator>  _toroboJointState_type;
  _toroboJointState_type toroboJointState;





  typedef boost::shared_ptr< ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetToroboJointStateResponse_

typedef ::torobo_msgs::GetToroboJointStateResponse_<std::allocator<void> > GetToroboJointStateResponse;

typedef boost::shared_ptr< ::torobo_msgs::GetToroboJointStateResponse > GetToroboJointStateResponsePtr;
typedef boost::shared_ptr< ::torobo_msgs::GetToroboJointStateResponse const> GetToroboJointStateResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator1> & lhs, const ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator2> & rhs)
{
  return lhs.toroboJointState == rhs.toroboJointState;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator1> & lhs, const ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace torobo_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2f0dead6332ebd57024a39d22134c85d";
  }

  static const char* value(const ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2f0dead6332ebd57ULL;
  static const uint64_t static_value2 = 0x024a39d22134c85dULL;
};

template<class ContainerAllocator>
struct DataType< ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "torobo_msgs/GetToroboJointStateResponse";
  }

  static const char* value(const ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "torobo_msgs/ToroboJointState toroboJointState\n"
"\n"
"================================================================================\n"
"MSG: torobo_msgs/ToroboJointState\n"
"Header header\n"
"\n"
"uint64 timeStamp\n"
"uint64 hostTimeStamp\n"
"string[] name\n"
"uint32[] type\n"
"uint32[] comStatus\n"
"uint32[] systemMode\n"
"uint32[] ctrlMode\n"
"uint64[] errorWarningStatus\n"
"uint32[] trjStatus\n"
"uint32[] trjViaRemain\n"
"float64[] refCurrent\n"
"float64[] refPosition\n"
"float64[] refVelocity\n"
"float64[] refAcceleration\n"
"float64[] refEffort\n"
"float64[] current\n"
"float64[] position\n"
"float64[] velocity\n"
"float64[] outConvInVelocity\n"
"float64[] acceleration\n"
"float64[] outConvInAcceleration\n"
"float64[] effort\n"
"float64[] temperature\n"
"float64[] general_0\n"
"float64[] general_1\n"
"float64[] general_2\n"
"float64[] general_3\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.toroboJointState);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetToroboJointStateResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::torobo_msgs::GetToroboJointStateResponse_<ContainerAllocator>& v)
  {
    s << indent << "toroboJointState: ";
    s << std::endl;
    Printer< ::torobo_msgs::ToroboJointState_<ContainerAllocator> >::stream(s, indent + "  ", v.toroboJointState);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TOROBO_MSGS_MESSAGE_GETTOROBOJOINTSTATERESPONSE_H
