; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-srv)


;//! \htmlinclude CheckCollision-request.msg.html

(cl:defclass <CheckCollision-request> (roslisp-msg-protocol:ros-message)
  ((jointState
    :reader jointState
    :initarg :jointState
    :type sensor_msgs-msg:JointState
    :initform (cl:make-instance 'sensor_msgs-msg:JointState)))
)

(cl:defclass CheckCollision-request (<CheckCollision-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckCollision-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckCollision-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<CheckCollision-request> is deprecated: use torobo_msgs-srv:CheckCollision-request instead.")))

(cl:ensure-generic-function 'jointState-val :lambda-list '(m))
(cl:defmethod jointState-val ((m <CheckCollision-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:jointState-val is deprecated.  Use torobo_msgs-srv:jointState instead.")
  (jointState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckCollision-request>) ostream)
  "Serializes a message object of type '<CheckCollision-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'jointState) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckCollision-request>) istream)
  "Deserializes a message object of type '<CheckCollision-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'jointState) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckCollision-request>)))
  "Returns string type for a service object of type '<CheckCollision-request>"
  "torobo_msgs/CheckCollisionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckCollision-request)))
  "Returns string type for a service object of type 'CheckCollision-request"
  "torobo_msgs/CheckCollisionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckCollision-request>)))
  "Returns md5sum for a message object of type '<CheckCollision-request>"
  "7f331446f35a1a09fd73f183dd0a3fe8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckCollision-request)))
  "Returns md5sum for a message object of type 'CheckCollision-request"
  "7f331446f35a1a09fd73f183dd0a3fe8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckCollision-request>)))
  "Returns full string definition for message of type '<CheckCollision-request>"
  (cl:format cl:nil "sensor_msgs/JointState jointState~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckCollision-request)))
  "Returns full string definition for message of type 'CheckCollision-request"
  (cl:format cl:nil "sensor_msgs/JointState jointState~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckCollision-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'jointState))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckCollision-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckCollision-request
    (cl:cons ':jointState (jointState msg))
))
;//! \htmlinclude CheckCollision-response.msg.html

(cl:defclass <CheckCollision-response> (roslisp-msg-protocol:ros-message)
  ((isColliding
    :reader isColliding
    :initarg :isColliding
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CheckCollision-response (<CheckCollision-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckCollision-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckCollision-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<CheckCollision-response> is deprecated: use torobo_msgs-srv:CheckCollision-response instead.")))

(cl:ensure-generic-function 'isColliding-val :lambda-list '(m))
(cl:defmethod isColliding-val ((m <CheckCollision-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:isColliding-val is deprecated.  Use torobo_msgs-srv:isColliding instead.")
  (isColliding m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckCollision-response>) ostream)
  "Serializes a message object of type '<CheckCollision-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isColliding) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckCollision-response>) istream)
  "Deserializes a message object of type '<CheckCollision-response>"
    (cl:setf (cl:slot-value msg 'isColliding) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckCollision-response>)))
  "Returns string type for a service object of type '<CheckCollision-response>"
  "torobo_msgs/CheckCollisionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckCollision-response)))
  "Returns string type for a service object of type 'CheckCollision-response"
  "torobo_msgs/CheckCollisionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckCollision-response>)))
  "Returns md5sum for a message object of type '<CheckCollision-response>"
  "7f331446f35a1a09fd73f183dd0a3fe8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckCollision-response)))
  "Returns md5sum for a message object of type 'CheckCollision-response"
  "7f331446f35a1a09fd73f183dd0a3fe8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckCollision-response>)))
  "Returns full string definition for message of type '<CheckCollision-response>"
  (cl:format cl:nil "bool isColliding~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckCollision-response)))
  "Returns full string definition for message of type 'CheckCollision-response"
  (cl:format cl:nil "bool isColliding~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckCollision-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckCollision-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckCollision-response
    (cl:cons ':isColliding (isColliding msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckCollision)))
  'CheckCollision-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckCollision)))
  'CheckCollision-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckCollision)))
  "Returns string type for a service object of type '<CheckCollision>"
  "torobo_msgs/CheckCollision")