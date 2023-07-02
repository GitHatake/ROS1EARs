; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-srv)


;//! \htmlinclude RecordTeachingTrajectory-request.msg.html

(cl:defclass <RecordTeachingTrajectory-request> (roslisp-msg-protocol:ros-message)
  ((teachingTrajectoryName
    :reader teachingTrajectoryName
    :initarg :teachingTrajectoryName
    :type cl:string
    :initform "")
   (trajectory
    :reader trajectory
    :initarg :trajectory
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory)))
)

(cl:defclass RecordTeachingTrajectory-request (<RecordTeachingTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecordTeachingTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecordTeachingTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<RecordTeachingTrajectory-request> is deprecated: use torobo_msgs-srv:RecordTeachingTrajectory-request instead.")))

(cl:ensure-generic-function 'teachingTrajectoryName-val :lambda-list '(m))
(cl:defmethod teachingTrajectoryName-val ((m <RecordTeachingTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:teachingTrajectoryName-val is deprecated.  Use torobo_msgs-srv:teachingTrajectoryName instead.")
  (teachingTrajectoryName m))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <RecordTeachingTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:trajectory-val is deprecated.  Use torobo_msgs-srv:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecordTeachingTrajectory-request>) ostream)
  "Serializes a message object of type '<RecordTeachingTrajectory-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'teachingTrajectoryName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'teachingTrajectoryName))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecordTeachingTrajectory-request>) istream)
  "Deserializes a message object of type '<RecordTeachingTrajectory-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'teachingTrajectoryName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'teachingTrajectoryName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecordTeachingTrajectory-request>)))
  "Returns string type for a service object of type '<RecordTeachingTrajectory-request>"
  "torobo_msgs/RecordTeachingTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecordTeachingTrajectory-request)))
  "Returns string type for a service object of type 'RecordTeachingTrajectory-request"
  "torobo_msgs/RecordTeachingTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecordTeachingTrajectory-request>)))
  "Returns md5sum for a message object of type '<RecordTeachingTrajectory-request>"
  "c669b47b2c67251a736ac9c2f832189a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecordTeachingTrajectory-request)))
  "Returns md5sum for a message object of type 'RecordTeachingTrajectory-request"
  "c669b47b2c67251a736ac9c2f832189a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecordTeachingTrajectory-request>)))
  "Returns full string definition for message of type '<RecordTeachingTrajectory-request>"
  (cl:format cl:nil "string teachingTrajectoryName~%trajectory_msgs/JointTrajectory trajectory~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecordTeachingTrajectory-request)))
  "Returns full string definition for message of type 'RecordTeachingTrajectory-request"
  (cl:format cl:nil "string teachingTrajectoryName~%trajectory_msgs/JointTrajectory trajectory~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecordTeachingTrajectory-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'teachingTrajectoryName))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecordTeachingTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RecordTeachingTrajectory-request
    (cl:cons ':teachingTrajectoryName (teachingTrajectoryName msg))
    (cl:cons ':trajectory (trajectory msg))
))
;//! \htmlinclude RecordTeachingTrajectory-response.msg.html

(cl:defclass <RecordTeachingTrajectory-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RecordTeachingTrajectory-response (<RecordTeachingTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecordTeachingTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecordTeachingTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<RecordTeachingTrajectory-response> is deprecated: use torobo_msgs-srv:RecordTeachingTrajectory-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RecordTeachingTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:success-val is deprecated.  Use torobo_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecordTeachingTrajectory-response>) ostream)
  "Serializes a message object of type '<RecordTeachingTrajectory-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecordTeachingTrajectory-response>) istream)
  "Deserializes a message object of type '<RecordTeachingTrajectory-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecordTeachingTrajectory-response>)))
  "Returns string type for a service object of type '<RecordTeachingTrajectory-response>"
  "torobo_msgs/RecordTeachingTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecordTeachingTrajectory-response)))
  "Returns string type for a service object of type 'RecordTeachingTrajectory-response"
  "torobo_msgs/RecordTeachingTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecordTeachingTrajectory-response>)))
  "Returns md5sum for a message object of type '<RecordTeachingTrajectory-response>"
  "c669b47b2c67251a736ac9c2f832189a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecordTeachingTrajectory-response)))
  "Returns md5sum for a message object of type 'RecordTeachingTrajectory-response"
  "c669b47b2c67251a736ac9c2f832189a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecordTeachingTrajectory-response>)))
  "Returns full string definition for message of type '<RecordTeachingTrajectory-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecordTeachingTrajectory-response)))
  "Returns full string definition for message of type 'RecordTeachingTrajectory-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecordTeachingTrajectory-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecordTeachingTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RecordTeachingTrajectory-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RecordTeachingTrajectory)))
  'RecordTeachingTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RecordTeachingTrajectory)))
  'RecordTeachingTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecordTeachingTrajectory)))
  "Returns string type for a service object of type '<RecordTeachingTrajectory>"
  "torobo_msgs/RecordTeachingTrajectory")