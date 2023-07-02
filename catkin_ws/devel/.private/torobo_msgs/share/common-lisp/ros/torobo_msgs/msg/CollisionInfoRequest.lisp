; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-msg)


;//! \htmlinclude CollisionInfoRequest.msg.html

(cl:defclass <CollisionInfoRequest> (roslisp-msg-protocol:ros-message)
  ((jointState
    :reader jointState
    :initarg :jointState
    :type sensor_msgs-msg:JointState
    :initform (cl:make-instance 'sensor_msgs-msg:JointState))
   (max_contacts
    :reader max_contacts
    :initarg :max_contacts
    :type cl:integer
    :initform 0))
)

(cl:defclass CollisionInfoRequest (<CollisionInfoRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CollisionInfoRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CollisionInfoRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-msg:<CollisionInfoRequest> is deprecated: use torobo_msgs-msg:CollisionInfoRequest instead.")))

(cl:ensure-generic-function 'jointState-val :lambda-list '(m))
(cl:defmethod jointState-val ((m <CollisionInfoRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-msg:jointState-val is deprecated.  Use torobo_msgs-msg:jointState instead.")
  (jointState m))

(cl:ensure-generic-function 'max_contacts-val :lambda-list '(m))
(cl:defmethod max_contacts-val ((m <CollisionInfoRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-msg:max_contacts-val is deprecated.  Use torobo_msgs-msg:max_contacts instead.")
  (max_contacts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CollisionInfoRequest>) ostream)
  "Serializes a message object of type '<CollisionInfoRequest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'jointState) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_contacts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_contacts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'max_contacts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'max_contacts)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CollisionInfoRequest>) istream)
  "Deserializes a message object of type '<CollisionInfoRequest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'jointState) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_contacts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_contacts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'max_contacts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'max_contacts)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CollisionInfoRequest>)))
  "Returns string type for a message object of type '<CollisionInfoRequest>"
  "torobo_msgs/CollisionInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CollisionInfoRequest)))
  "Returns string type for a message object of type 'CollisionInfoRequest"
  "torobo_msgs/CollisionInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CollisionInfoRequest>)))
  "Returns md5sum for a message object of type '<CollisionInfoRequest>"
  "011912b45619601da9981598cea2b9a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CollisionInfoRequest)))
  "Returns md5sum for a message object of type 'CollisionInfoRequest"
  "011912b45619601da9981598cea2b9a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CollisionInfoRequest>)))
  "Returns full string definition for message of type '<CollisionInfoRequest>"
  (cl:format cl:nil "sensor_msgs/JointState jointState~%uint32 max_contacts~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CollisionInfoRequest)))
  "Returns full string definition for message of type 'CollisionInfoRequest"
  (cl:format cl:nil "sensor_msgs/JointState jointState~%uint32 max_contacts~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CollisionInfoRequest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'jointState))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CollisionInfoRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'CollisionInfoRequest
    (cl:cons ':jointState (jointState msg))
    (cl:cons ':max_contacts (max_contacts msg))
))
