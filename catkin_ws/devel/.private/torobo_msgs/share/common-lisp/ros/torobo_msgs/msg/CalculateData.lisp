; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-msg)


;//! \htmlinclude CalculateData.msg.html

(cl:defclass <CalculateData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (CalculatedJointValue
    :reader CalculatedJointValue
    :initarg :CalculatedJointValue
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass CalculateData (<CalculateData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalculateData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalculateData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-msg:<CalculateData> is deprecated: use torobo_msgs-msg:CalculateData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CalculateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-msg:header-val is deprecated.  Use torobo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'CalculatedJointValue-val :lambda-list '(m))
(cl:defmethod CalculatedJointValue-val ((m <CalculateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-msg:CalculatedJointValue-val is deprecated.  Use torobo_msgs-msg:CalculatedJointValue instead.")
  (CalculatedJointValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalculateData>) ostream)
  "Serializes a message object of type '<CalculateData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'CalculatedJointValue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'CalculatedJointValue))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalculateData>) istream)
  "Deserializes a message object of type '<CalculateData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'CalculatedJointValue) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'CalculatedJointValue)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalculateData>)))
  "Returns string type for a message object of type '<CalculateData>"
  "torobo_msgs/CalculateData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalculateData)))
  "Returns string type for a message object of type 'CalculateData"
  "torobo_msgs/CalculateData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalculateData>)))
  "Returns md5sum for a message object of type '<CalculateData>"
  "dbe3f603e6909e94b26707520c4cef74")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalculateData)))
  "Returns md5sum for a message object of type 'CalculateData"
  "dbe3f603e6909e94b26707520c4cef74")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalculateData>)))
  "Returns full string definition for message of type '<CalculateData>"
  (cl:format cl:nil "Header header~%~%float64[] CalculatedJointValue~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalculateData)))
  "Returns full string definition for message of type 'CalculateData"
  (cl:format cl:nil "Header header~%~%float64[] CalculatedJointValue~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalculateData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'CalculatedJointValue) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalculateData>))
  "Converts a ROS message object to a list"
  (cl:list 'CalculateData
    (cl:cons ':header (header msg))
    (cl:cons ':CalculatedJointValue (CalculatedJointValue msg))
))
