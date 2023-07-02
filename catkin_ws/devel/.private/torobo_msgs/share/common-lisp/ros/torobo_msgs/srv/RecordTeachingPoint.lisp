; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-srv)


;//! \htmlinclude RecordTeachingPoint-request.msg.html

(cl:defclass <RecordTeachingPoint-request> (roslisp-msg-protocol:ros-message)
  ((teachingPointName
    :reader teachingPointName
    :initarg :teachingPointName
    :type cl:string
    :initform "")
   (point
    :reader point
    :initarg :point
    :type trajectory_msgs-msg:JointTrajectoryPoint
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint)))
)

(cl:defclass RecordTeachingPoint-request (<RecordTeachingPoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecordTeachingPoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecordTeachingPoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<RecordTeachingPoint-request> is deprecated: use torobo_msgs-srv:RecordTeachingPoint-request instead.")))

(cl:ensure-generic-function 'teachingPointName-val :lambda-list '(m))
(cl:defmethod teachingPointName-val ((m <RecordTeachingPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:teachingPointName-val is deprecated.  Use torobo_msgs-srv:teachingPointName instead.")
  (teachingPointName m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <RecordTeachingPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:point-val is deprecated.  Use torobo_msgs-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecordTeachingPoint-request>) ostream)
  "Serializes a message object of type '<RecordTeachingPoint-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'teachingPointName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'teachingPointName))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecordTeachingPoint-request>) istream)
  "Deserializes a message object of type '<RecordTeachingPoint-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'teachingPointName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'teachingPointName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecordTeachingPoint-request>)))
  "Returns string type for a service object of type '<RecordTeachingPoint-request>"
  "torobo_msgs/RecordTeachingPointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecordTeachingPoint-request)))
  "Returns string type for a service object of type 'RecordTeachingPoint-request"
  "torobo_msgs/RecordTeachingPointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecordTeachingPoint-request>)))
  "Returns md5sum for a message object of type '<RecordTeachingPoint-request>"
  "da402d8c24b24843426eaf136284c37e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecordTeachingPoint-request)))
  "Returns md5sum for a message object of type 'RecordTeachingPoint-request"
  "da402d8c24b24843426eaf136284c37e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecordTeachingPoint-request>)))
  "Returns full string definition for message of type '<RecordTeachingPoint-request>"
  (cl:format cl:nil "string teachingPointName~%trajectory_msgs/JointTrajectoryPoint point ~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecordTeachingPoint-request)))
  "Returns full string definition for message of type 'RecordTeachingPoint-request"
  (cl:format cl:nil "string teachingPointName~%trajectory_msgs/JointTrajectoryPoint point ~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecordTeachingPoint-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'teachingPointName))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecordTeachingPoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RecordTeachingPoint-request
    (cl:cons ':teachingPointName (teachingPointName msg))
    (cl:cons ':point (point msg))
))
;//! \htmlinclude RecordTeachingPoint-response.msg.html

(cl:defclass <RecordTeachingPoint-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RecordTeachingPoint-response (<RecordTeachingPoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecordTeachingPoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecordTeachingPoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<RecordTeachingPoint-response> is deprecated: use torobo_msgs-srv:RecordTeachingPoint-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RecordTeachingPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:success-val is deprecated.  Use torobo_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecordTeachingPoint-response>) ostream)
  "Serializes a message object of type '<RecordTeachingPoint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecordTeachingPoint-response>) istream)
  "Deserializes a message object of type '<RecordTeachingPoint-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecordTeachingPoint-response>)))
  "Returns string type for a service object of type '<RecordTeachingPoint-response>"
  "torobo_msgs/RecordTeachingPointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecordTeachingPoint-response)))
  "Returns string type for a service object of type 'RecordTeachingPoint-response"
  "torobo_msgs/RecordTeachingPointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecordTeachingPoint-response>)))
  "Returns md5sum for a message object of type '<RecordTeachingPoint-response>"
  "da402d8c24b24843426eaf136284c37e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecordTeachingPoint-response)))
  "Returns md5sum for a message object of type 'RecordTeachingPoint-response"
  "da402d8c24b24843426eaf136284c37e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecordTeachingPoint-response>)))
  "Returns full string definition for message of type '<RecordTeachingPoint-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecordTeachingPoint-response)))
  "Returns full string definition for message of type 'RecordTeachingPoint-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecordTeachingPoint-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecordTeachingPoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RecordTeachingPoint-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RecordTeachingPoint)))
  'RecordTeachingPoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RecordTeachingPoint)))
  'RecordTeachingPoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecordTeachingPoint)))
  "Returns string type for a service object of type '<RecordTeachingPoint>"
  "torobo_msgs/RecordTeachingPoint")