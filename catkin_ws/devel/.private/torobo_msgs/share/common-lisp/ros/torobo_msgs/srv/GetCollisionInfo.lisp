; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-srv)


;//! \htmlinclude GetCollisionInfo-request.msg.html

(cl:defclass <GetCollisionInfo-request> (roslisp-msg-protocol:ros-message)
  ((collision_info_request
    :reader collision_info_request
    :initarg :collision_info_request
    :type torobo_msgs-msg:CollisionInfoRequest
    :initform (cl:make-instance 'torobo_msgs-msg:CollisionInfoRequest)))
)

(cl:defclass GetCollisionInfo-request (<GetCollisionInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCollisionInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCollisionInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<GetCollisionInfo-request> is deprecated: use torobo_msgs-srv:GetCollisionInfo-request instead.")))

(cl:ensure-generic-function 'collision_info_request-val :lambda-list '(m))
(cl:defmethod collision_info_request-val ((m <GetCollisionInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:collision_info_request-val is deprecated.  Use torobo_msgs-srv:collision_info_request instead.")
  (collision_info_request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCollisionInfo-request>) ostream)
  "Serializes a message object of type '<GetCollisionInfo-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'collision_info_request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCollisionInfo-request>) istream)
  "Deserializes a message object of type '<GetCollisionInfo-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'collision_info_request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCollisionInfo-request>)))
  "Returns string type for a service object of type '<GetCollisionInfo-request>"
  "torobo_msgs/GetCollisionInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCollisionInfo-request)))
  "Returns string type for a service object of type 'GetCollisionInfo-request"
  "torobo_msgs/GetCollisionInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCollisionInfo-request>)))
  "Returns md5sum for a message object of type '<GetCollisionInfo-request>"
  "f0626346887ec50a585aed5a146d00dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCollisionInfo-request)))
  "Returns md5sum for a message object of type 'GetCollisionInfo-request"
  "f0626346887ec50a585aed5a146d00dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCollisionInfo-request>)))
  "Returns full string definition for message of type '<GetCollisionInfo-request>"
  (cl:format cl:nil "CollisionInfoRequest collision_info_request~%~%================================================================================~%MSG: torobo_msgs/CollisionInfoRequest~%sensor_msgs/JointState jointState~%uint32 max_contacts~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCollisionInfo-request)))
  "Returns full string definition for message of type 'GetCollisionInfo-request"
  (cl:format cl:nil "CollisionInfoRequest collision_info_request~%~%================================================================================~%MSG: torobo_msgs/CollisionInfoRequest~%sensor_msgs/JointState jointState~%uint32 max_contacts~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCollisionInfo-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'collision_info_request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCollisionInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCollisionInfo-request
    (cl:cons ':collision_info_request (collision_info_request msg))
))
;//! \htmlinclude GetCollisionInfo-response.msg.html

(cl:defclass <GetCollisionInfo-response> (roslisp-msg-protocol:ros-message)
  ((collision_info_response
    :reader collision_info_response
    :initarg :collision_info_response
    :type torobo_msgs-msg:CollisionInfoResponse
    :initform (cl:make-instance 'torobo_msgs-msg:CollisionInfoResponse)))
)

(cl:defclass GetCollisionInfo-response (<GetCollisionInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCollisionInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCollisionInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<GetCollisionInfo-response> is deprecated: use torobo_msgs-srv:GetCollisionInfo-response instead.")))

(cl:ensure-generic-function 'collision_info_response-val :lambda-list '(m))
(cl:defmethod collision_info_response-val ((m <GetCollisionInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:collision_info_response-val is deprecated.  Use torobo_msgs-srv:collision_info_response instead.")
  (collision_info_response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCollisionInfo-response>) ostream)
  "Serializes a message object of type '<GetCollisionInfo-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'collision_info_response) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCollisionInfo-response>) istream)
  "Deserializes a message object of type '<GetCollisionInfo-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'collision_info_response) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCollisionInfo-response>)))
  "Returns string type for a service object of type '<GetCollisionInfo-response>"
  "torobo_msgs/GetCollisionInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCollisionInfo-response)))
  "Returns string type for a service object of type 'GetCollisionInfo-response"
  "torobo_msgs/GetCollisionInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCollisionInfo-response>)))
  "Returns md5sum for a message object of type '<GetCollisionInfo-response>"
  "f0626346887ec50a585aed5a146d00dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCollisionInfo-response)))
  "Returns md5sum for a message object of type 'GetCollisionInfo-response"
  "f0626346887ec50a585aed5a146d00dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCollisionInfo-response>)))
  "Returns full string definition for message of type '<GetCollisionInfo-response>"
  (cl:format cl:nil "CollisionInfoResponse collision_info_response~%~%~%================================================================================~%MSG: torobo_msgs/CollisionInfoResponse~%bool isColliding~%moveit_msgs/ContactInformation[] contacts~%~%================================================================================~%MSG: moveit_msgs/ContactInformation~%# Standard ROS header contains information ~%# about the frame in which this ~%# contact is specified~%Header header~%~%# Position of the contact point~%geometry_msgs/Point position~%~%# Normal corresponding to the contact point~%geometry_msgs/Vector3 normal ~%~%# Depth of contact point~%float64 depth~%~%# Name of the first body that is in contact~%# This could be a link or a namespace that represents a body~%string contact_body_1~%uint32 body_type_1~%~%# Name of the second body that is in contact~%# This could be a link or a namespace that represents a body~%string contact_body_2~%uint32 body_type_2~%~%uint32 ROBOT_LINK=0~%uint32 WORLD_OBJECT=1~%uint32 ROBOT_ATTACHED=2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCollisionInfo-response)))
  "Returns full string definition for message of type 'GetCollisionInfo-response"
  (cl:format cl:nil "CollisionInfoResponse collision_info_response~%~%~%================================================================================~%MSG: torobo_msgs/CollisionInfoResponse~%bool isColliding~%moveit_msgs/ContactInformation[] contacts~%~%================================================================================~%MSG: moveit_msgs/ContactInformation~%# Standard ROS header contains information ~%# about the frame in which this ~%# contact is specified~%Header header~%~%# Position of the contact point~%geometry_msgs/Point position~%~%# Normal corresponding to the contact point~%geometry_msgs/Vector3 normal ~%~%# Depth of contact point~%float64 depth~%~%# Name of the first body that is in contact~%# This could be a link or a namespace that represents a body~%string contact_body_1~%uint32 body_type_1~%~%# Name of the second body that is in contact~%# This could be a link or a namespace that represents a body~%string contact_body_2~%uint32 body_type_2~%~%uint32 ROBOT_LINK=0~%uint32 WORLD_OBJECT=1~%uint32 ROBOT_ATTACHED=2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCollisionInfo-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'collision_info_response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCollisionInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCollisionInfo-response
    (cl:cons ':collision_info_response (collision_info_response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCollisionInfo)))
  'GetCollisionInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCollisionInfo)))
  'GetCollisionInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCollisionInfo)))
  "Returns string type for a service object of type '<GetCollisionInfo>"
  "torobo_msgs/GetCollisionInfo")