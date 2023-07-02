; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-srv)


;//! \htmlinclude GetTeachingTrajectory-request.msg.html

(cl:defclass <GetTeachingTrajectory-request> (roslisp-msg-protocol:ros-message)
  ((teachingTrajectoryName
    :reader teachingTrajectoryName
    :initarg :teachingTrajectoryName
    :type cl:string
    :initform ""))
)

(cl:defclass GetTeachingTrajectory-request (<GetTeachingTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTeachingTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTeachingTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<GetTeachingTrajectory-request> is deprecated: use torobo_msgs-srv:GetTeachingTrajectory-request instead.")))

(cl:ensure-generic-function 'teachingTrajectoryName-val :lambda-list '(m))
(cl:defmethod teachingTrajectoryName-val ((m <GetTeachingTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:teachingTrajectoryName-val is deprecated.  Use torobo_msgs-srv:teachingTrajectoryName instead.")
  (teachingTrajectoryName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTeachingTrajectory-request>) ostream)
  "Serializes a message object of type '<GetTeachingTrajectory-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'teachingTrajectoryName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'teachingTrajectoryName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTeachingTrajectory-request>) istream)
  "Deserializes a message object of type '<GetTeachingTrajectory-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'teachingTrajectoryName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'teachingTrajectoryName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTeachingTrajectory-request>)))
  "Returns string type for a service object of type '<GetTeachingTrajectory-request>"
  "torobo_msgs/GetTeachingTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTeachingTrajectory-request)))
  "Returns string type for a service object of type 'GetTeachingTrajectory-request"
  "torobo_msgs/GetTeachingTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTeachingTrajectory-request>)))
  "Returns md5sum for a message object of type '<GetTeachingTrajectory-request>"
  "af3a19966e89354595e93e28bbdd4162")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTeachingTrajectory-request)))
  "Returns md5sum for a message object of type 'GetTeachingTrajectory-request"
  "af3a19966e89354595e93e28bbdd4162")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTeachingTrajectory-request>)))
  "Returns full string definition for message of type '<GetTeachingTrajectory-request>"
  (cl:format cl:nil "string teachingTrajectoryName ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTeachingTrajectory-request)))
  "Returns full string definition for message of type 'GetTeachingTrajectory-request"
  (cl:format cl:nil "string teachingTrajectoryName ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTeachingTrajectory-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'teachingTrajectoryName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTeachingTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTeachingTrajectory-request
    (cl:cons ':teachingTrajectoryName (teachingTrajectoryName msg))
))
;//! \htmlinclude GetTeachingTrajectory-response.msg.html

(cl:defclass <GetTeachingTrajectory-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (trajectory
    :reader trajectory
    :initarg :trajectory
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory)))
)

(cl:defclass GetTeachingTrajectory-response (<GetTeachingTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTeachingTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTeachingTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<GetTeachingTrajectory-response> is deprecated: use torobo_msgs-srv:GetTeachingTrajectory-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetTeachingTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:success-val is deprecated.  Use torobo_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <GetTeachingTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:trajectory-val is deprecated.  Use torobo_msgs-srv:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTeachingTrajectory-response>) ostream)
  "Serializes a message object of type '<GetTeachingTrajectory-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTeachingTrajectory-response>) istream)
  "Deserializes a message object of type '<GetTeachingTrajectory-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTeachingTrajectory-response>)))
  "Returns string type for a service object of type '<GetTeachingTrajectory-response>"
  "torobo_msgs/GetTeachingTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTeachingTrajectory-response)))
  "Returns string type for a service object of type 'GetTeachingTrajectory-response"
  "torobo_msgs/GetTeachingTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTeachingTrajectory-response>)))
  "Returns md5sum for a message object of type '<GetTeachingTrajectory-response>"
  "af3a19966e89354595e93e28bbdd4162")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTeachingTrajectory-response)))
  "Returns md5sum for a message object of type 'GetTeachingTrajectory-response"
  "af3a19966e89354595e93e28bbdd4162")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTeachingTrajectory-response>)))
  "Returns full string definition for message of type '<GetTeachingTrajectory-response>"
  (cl:format cl:nil "bool success~%trajectory_msgs/JointTrajectory trajectory~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTeachingTrajectory-response)))
  "Returns full string definition for message of type 'GetTeachingTrajectory-response"
  (cl:format cl:nil "bool success~%trajectory_msgs/JointTrajectory trajectory~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTeachingTrajectory-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTeachingTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTeachingTrajectory-response
    (cl:cons ':success (success msg))
    (cl:cons ':trajectory (trajectory msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTeachingTrajectory)))
  'GetTeachingTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTeachingTrajectory)))
  'GetTeachingTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTeachingTrajectory)))
  "Returns string type for a service object of type '<GetTeachingTrajectory>"
  "torobo_msgs/GetTeachingTrajectory")