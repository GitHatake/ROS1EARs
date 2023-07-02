; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-msg)


;//! \htmlinclude CollisionInfoResponse.msg.html

(cl:defclass <CollisionInfoResponse> (roslisp-msg-protocol:ros-message)
  ((isColliding
    :reader isColliding
    :initarg :isColliding
    :type cl:boolean
    :initform cl:nil)
   (contacts
    :reader contacts
    :initarg :contacts
    :type (cl:vector moveit_msgs-msg:ContactInformation)
   :initform (cl:make-array 0 :element-type 'moveit_msgs-msg:ContactInformation :initial-element (cl:make-instance 'moveit_msgs-msg:ContactInformation))))
)

(cl:defclass CollisionInfoResponse (<CollisionInfoResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CollisionInfoResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CollisionInfoResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-msg:<CollisionInfoResponse> is deprecated: use torobo_msgs-msg:CollisionInfoResponse instead.")))

(cl:ensure-generic-function 'isColliding-val :lambda-list '(m))
(cl:defmethod isColliding-val ((m <CollisionInfoResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-msg:isColliding-val is deprecated.  Use torobo_msgs-msg:isColliding instead.")
  (isColliding m))

(cl:ensure-generic-function 'contacts-val :lambda-list '(m))
(cl:defmethod contacts-val ((m <CollisionInfoResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-msg:contacts-val is deprecated.  Use torobo_msgs-msg:contacts instead.")
  (contacts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CollisionInfoResponse>) ostream)
  "Serializes a message object of type '<CollisionInfoResponse>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isColliding) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'contacts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'contacts))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CollisionInfoResponse>) istream)
  "Deserializes a message object of type '<CollisionInfoResponse>"
    (cl:setf (cl:slot-value msg 'isColliding) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'contacts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'contacts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'moveit_msgs-msg:ContactInformation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CollisionInfoResponse>)))
  "Returns string type for a message object of type '<CollisionInfoResponse>"
  "torobo_msgs/CollisionInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CollisionInfoResponse)))
  "Returns string type for a message object of type 'CollisionInfoResponse"
  "torobo_msgs/CollisionInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CollisionInfoResponse>)))
  "Returns md5sum for a message object of type '<CollisionInfoResponse>"
  "a47c47e56d53de2ea05d46b23329bd86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CollisionInfoResponse)))
  "Returns md5sum for a message object of type 'CollisionInfoResponse"
  "a47c47e56d53de2ea05d46b23329bd86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CollisionInfoResponse>)))
  "Returns full string definition for message of type '<CollisionInfoResponse>"
  (cl:format cl:nil "bool isColliding~%moveit_msgs/ContactInformation[] contacts~%~%================================================================================~%MSG: moveit_msgs/ContactInformation~%# Standard ROS header contains information ~%# about the frame in which this ~%# contact is specified~%Header header~%~%# Position of the contact point~%geometry_msgs/Point position~%~%# Normal corresponding to the contact point~%geometry_msgs/Vector3 normal ~%~%# Depth of contact point~%float64 depth~%~%# Name of the first body that is in contact~%# This could be a link or a namespace that represents a body~%string contact_body_1~%uint32 body_type_1~%~%# Name of the second body that is in contact~%# This could be a link or a namespace that represents a body~%string contact_body_2~%uint32 body_type_2~%~%uint32 ROBOT_LINK=0~%uint32 WORLD_OBJECT=1~%uint32 ROBOT_ATTACHED=2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CollisionInfoResponse)))
  "Returns full string definition for message of type 'CollisionInfoResponse"
  (cl:format cl:nil "bool isColliding~%moveit_msgs/ContactInformation[] contacts~%~%================================================================================~%MSG: moveit_msgs/ContactInformation~%# Standard ROS header contains information ~%# about the frame in which this ~%# contact is specified~%Header header~%~%# Position of the contact point~%geometry_msgs/Point position~%~%# Normal corresponding to the contact point~%geometry_msgs/Vector3 normal ~%~%# Depth of contact point~%float64 depth~%~%# Name of the first body that is in contact~%# This could be a link or a namespace that represents a body~%string contact_body_1~%uint32 body_type_1~%~%# Name of the second body that is in contact~%# This could be a link or a namespace that represents a body~%string contact_body_2~%uint32 body_type_2~%~%uint32 ROBOT_LINK=0~%uint32 WORLD_OBJECT=1~%uint32 ROBOT_ATTACHED=2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CollisionInfoResponse>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'contacts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CollisionInfoResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'CollisionInfoResponse
    (cl:cons ':isColliding (isColliding msg))
    (cl:cons ':contacts (contacts msg))
))
