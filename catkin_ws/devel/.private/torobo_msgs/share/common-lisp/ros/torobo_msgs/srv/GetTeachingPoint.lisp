; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-srv)


;//! \htmlinclude GetTeachingPoint-request.msg.html

(cl:defclass <GetTeachingPoint-request> (roslisp-msg-protocol:ros-message)
  ((teachingPointName
    :reader teachingPointName
    :initarg :teachingPointName
    :type cl:string
    :initform ""))
)

(cl:defclass GetTeachingPoint-request (<GetTeachingPoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTeachingPoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTeachingPoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<GetTeachingPoint-request> is deprecated: use torobo_msgs-srv:GetTeachingPoint-request instead.")))

(cl:ensure-generic-function 'teachingPointName-val :lambda-list '(m))
(cl:defmethod teachingPointName-val ((m <GetTeachingPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:teachingPointName-val is deprecated.  Use torobo_msgs-srv:teachingPointName instead.")
  (teachingPointName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTeachingPoint-request>) ostream)
  "Serializes a message object of type '<GetTeachingPoint-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'teachingPointName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'teachingPointName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTeachingPoint-request>) istream)
  "Deserializes a message object of type '<GetTeachingPoint-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'teachingPointName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'teachingPointName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTeachingPoint-request>)))
  "Returns string type for a service object of type '<GetTeachingPoint-request>"
  "torobo_msgs/GetTeachingPointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTeachingPoint-request)))
  "Returns string type for a service object of type 'GetTeachingPoint-request"
  "torobo_msgs/GetTeachingPointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTeachingPoint-request>)))
  "Returns md5sum for a message object of type '<GetTeachingPoint-request>"
  "cd31ca534ee0b773cd76acbd40a6c640")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTeachingPoint-request)))
  "Returns md5sum for a message object of type 'GetTeachingPoint-request"
  "cd31ca534ee0b773cd76acbd40a6c640")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTeachingPoint-request>)))
  "Returns full string definition for message of type '<GetTeachingPoint-request>"
  (cl:format cl:nil "string teachingPointName ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTeachingPoint-request)))
  "Returns full string definition for message of type 'GetTeachingPoint-request"
  (cl:format cl:nil "string teachingPointName ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTeachingPoint-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'teachingPointName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTeachingPoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTeachingPoint-request
    (cl:cons ':teachingPointName (teachingPointName msg))
))
;//! \htmlinclude GetTeachingPoint-response.msg.html

(cl:defclass <GetTeachingPoint-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (point
    :reader point
    :initarg :point
    :type trajectory_msgs-msg:JointTrajectoryPoint
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint)))
)

(cl:defclass GetTeachingPoint-response (<GetTeachingPoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTeachingPoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTeachingPoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<GetTeachingPoint-response> is deprecated: use torobo_msgs-srv:GetTeachingPoint-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetTeachingPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:success-val is deprecated.  Use torobo_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <GetTeachingPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:point-val is deprecated.  Use torobo_msgs-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTeachingPoint-response>) ostream)
  "Serializes a message object of type '<GetTeachingPoint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTeachingPoint-response>) istream)
  "Deserializes a message object of type '<GetTeachingPoint-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTeachingPoint-response>)))
  "Returns string type for a service object of type '<GetTeachingPoint-response>"
  "torobo_msgs/GetTeachingPointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTeachingPoint-response)))
  "Returns string type for a service object of type 'GetTeachingPoint-response"
  "torobo_msgs/GetTeachingPointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTeachingPoint-response>)))
  "Returns md5sum for a message object of type '<GetTeachingPoint-response>"
  "cd31ca534ee0b773cd76acbd40a6c640")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTeachingPoint-response)))
  "Returns md5sum for a message object of type 'GetTeachingPoint-response"
  "cd31ca534ee0b773cd76acbd40a6c640")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTeachingPoint-response>)))
  "Returns full string definition for message of type '<GetTeachingPoint-response>"
  (cl:format cl:nil "bool success~%trajectory_msgs/JointTrajectoryPoint point~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTeachingPoint-response)))
  "Returns full string definition for message of type 'GetTeachingPoint-response"
  (cl:format cl:nil "bool success~%trajectory_msgs/JointTrajectoryPoint point~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTeachingPoint-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTeachingPoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTeachingPoint-response
    (cl:cons ':success (success msg))
    (cl:cons ':point (point msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTeachingPoint)))
  'GetTeachingPoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTeachingPoint)))
  'GetTeachingPoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTeachingPoint)))
  "Returns string type for a service object of type '<GetTeachingPoint>"
  "torobo_msgs/GetTeachingPoint")