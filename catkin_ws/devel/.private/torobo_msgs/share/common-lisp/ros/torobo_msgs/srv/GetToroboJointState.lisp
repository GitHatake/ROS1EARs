; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-srv)


;//! \htmlinclude GetToroboJointState-request.msg.html

(cl:defclass <GetToroboJointState-request> (roslisp-msg-protocol:ros-message)
  ((controllerName
    :reader controllerName
    :initarg :controllerName
    :type cl:string
    :initform ""))
)

(cl:defclass GetToroboJointState-request (<GetToroboJointState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetToroboJointState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetToroboJointState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<GetToroboJointState-request> is deprecated: use torobo_msgs-srv:GetToroboJointState-request instead.")))

(cl:ensure-generic-function 'controllerName-val :lambda-list '(m))
(cl:defmethod controllerName-val ((m <GetToroboJointState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:controllerName-val is deprecated.  Use torobo_msgs-srv:controllerName instead.")
  (controllerName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetToroboJointState-request>) ostream)
  "Serializes a message object of type '<GetToroboJointState-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'controllerName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'controllerName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetToroboJointState-request>) istream)
  "Deserializes a message object of type '<GetToroboJointState-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'controllerName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'controllerName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetToroboJointState-request>)))
  "Returns string type for a service object of type '<GetToroboJointState-request>"
  "torobo_msgs/GetToroboJointStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetToroboJointState-request)))
  "Returns string type for a service object of type 'GetToroboJointState-request"
  "torobo_msgs/GetToroboJointStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetToroboJointState-request>)))
  "Returns md5sum for a message object of type '<GetToroboJointState-request>"
  "f076a05b5c866f51043035790c9b9bbf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetToroboJointState-request)))
  "Returns md5sum for a message object of type 'GetToroboJointState-request"
  "f076a05b5c866f51043035790c9b9bbf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetToroboJointState-request>)))
  "Returns full string definition for message of type '<GetToroboJointState-request>"
  (cl:format cl:nil "string controllerName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetToroboJointState-request)))
  "Returns full string definition for message of type 'GetToroboJointState-request"
  (cl:format cl:nil "string controllerName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetToroboJointState-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'controllerName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetToroboJointState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetToroboJointState-request
    (cl:cons ':controllerName (controllerName msg))
))
;//! \htmlinclude GetToroboJointState-response.msg.html

(cl:defclass <GetToroboJointState-response> (roslisp-msg-protocol:ros-message)
  ((toroboJointState
    :reader toroboJointState
    :initarg :toroboJointState
    :type torobo_msgs-msg:ToroboJointState
    :initform (cl:make-instance 'torobo_msgs-msg:ToroboJointState)))
)

(cl:defclass GetToroboJointState-response (<GetToroboJointState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetToroboJointState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetToroboJointState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<GetToroboJointState-response> is deprecated: use torobo_msgs-srv:GetToroboJointState-response instead.")))

(cl:ensure-generic-function 'toroboJointState-val :lambda-list '(m))
(cl:defmethod toroboJointState-val ((m <GetToroboJointState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:toroboJointState-val is deprecated.  Use torobo_msgs-srv:toroboJointState instead.")
  (toroboJointState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetToroboJointState-response>) ostream)
  "Serializes a message object of type '<GetToroboJointState-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'toroboJointState) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetToroboJointState-response>) istream)
  "Deserializes a message object of type '<GetToroboJointState-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'toroboJointState) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetToroboJointState-response>)))
  "Returns string type for a service object of type '<GetToroboJointState-response>"
  "torobo_msgs/GetToroboJointStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetToroboJointState-response)))
  "Returns string type for a service object of type 'GetToroboJointState-response"
  "torobo_msgs/GetToroboJointStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetToroboJointState-response>)))
  "Returns md5sum for a message object of type '<GetToroboJointState-response>"
  "f076a05b5c866f51043035790c9b9bbf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetToroboJointState-response)))
  "Returns md5sum for a message object of type 'GetToroboJointState-response"
  "f076a05b5c866f51043035790c9b9bbf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetToroboJointState-response>)))
  "Returns full string definition for message of type '<GetToroboJointState-response>"
  (cl:format cl:nil "torobo_msgs/ToroboJointState toroboJointState~%~%================================================================================~%MSG: torobo_msgs/ToroboJointState~%Header header~%~%uint64 timeStamp~%uint64 hostTimeStamp~%string[] name~%uint32[] type~%uint32[] comStatus~%uint32[] systemMode~%uint32[] ctrlMode~%uint64[] errorWarningStatus~%uint32[] trjStatus~%uint32[] trjViaRemain~%float64[] refCurrent~%float64[] refPosition~%float64[] refVelocity~%float64[] refAcceleration~%float64[] refEffort~%float64[] current~%float64[] position~%float64[] velocity~%float64[] outConvInVelocity~%float64[] acceleration~%float64[] outConvInAcceleration~%float64[] effort~%float64[] temperature~%float64[] general_0~%float64[] general_1~%float64[] general_2~%float64[] general_3~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetToroboJointState-response)))
  "Returns full string definition for message of type 'GetToroboJointState-response"
  (cl:format cl:nil "torobo_msgs/ToroboJointState toroboJointState~%~%================================================================================~%MSG: torobo_msgs/ToroboJointState~%Header header~%~%uint64 timeStamp~%uint64 hostTimeStamp~%string[] name~%uint32[] type~%uint32[] comStatus~%uint32[] systemMode~%uint32[] ctrlMode~%uint64[] errorWarningStatus~%uint32[] trjStatus~%uint32[] trjViaRemain~%float64[] refCurrent~%float64[] refPosition~%float64[] refVelocity~%float64[] refAcceleration~%float64[] refEffort~%float64[] current~%float64[] position~%float64[] velocity~%float64[] outConvInVelocity~%float64[] acceleration~%float64[] outConvInAcceleration~%float64[] effort~%float64[] temperature~%float64[] general_0~%float64[] general_1~%float64[] general_2~%float64[] general_3~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetToroboJointState-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'toroboJointState))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetToroboJointState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetToroboJointState-response
    (cl:cons ':toroboJointState (toroboJointState msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetToroboJointState)))
  'GetToroboJointState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetToroboJointState)))
  'GetToroboJointState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetToroboJointState)))
  "Returns string type for a service object of type '<GetToroboJointState>"
  "torobo_msgs/GetToroboJointState")