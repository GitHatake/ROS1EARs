; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-srv)


;//! \htmlinclude DeleteTeachingTrajectory-request.msg.html

(cl:defclass <DeleteTeachingTrajectory-request> (roslisp-msg-protocol:ros-message)
  ((teachingTrajectoryName
    :reader teachingTrajectoryName
    :initarg :teachingTrajectoryName
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteTeachingTrajectory-request (<DeleteTeachingTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteTeachingTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteTeachingTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<DeleteTeachingTrajectory-request> is deprecated: use torobo_msgs-srv:DeleteTeachingTrajectory-request instead.")))

(cl:ensure-generic-function 'teachingTrajectoryName-val :lambda-list '(m))
(cl:defmethod teachingTrajectoryName-val ((m <DeleteTeachingTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:teachingTrajectoryName-val is deprecated.  Use torobo_msgs-srv:teachingTrajectoryName instead.")
  (teachingTrajectoryName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteTeachingTrajectory-request>) ostream)
  "Serializes a message object of type '<DeleteTeachingTrajectory-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'teachingTrajectoryName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'teachingTrajectoryName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteTeachingTrajectory-request>) istream)
  "Deserializes a message object of type '<DeleteTeachingTrajectory-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteTeachingTrajectory-request>)))
  "Returns string type for a service object of type '<DeleteTeachingTrajectory-request>"
  "torobo_msgs/DeleteTeachingTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteTeachingTrajectory-request)))
  "Returns string type for a service object of type 'DeleteTeachingTrajectory-request"
  "torobo_msgs/DeleteTeachingTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteTeachingTrajectory-request>)))
  "Returns md5sum for a message object of type '<DeleteTeachingTrajectory-request>"
  "562d1a1ce249e5404efbe936d40d377a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteTeachingTrajectory-request)))
  "Returns md5sum for a message object of type 'DeleteTeachingTrajectory-request"
  "562d1a1ce249e5404efbe936d40d377a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteTeachingTrajectory-request>)))
  "Returns full string definition for message of type '<DeleteTeachingTrajectory-request>"
  (cl:format cl:nil "string teachingTrajectoryName ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteTeachingTrajectory-request)))
  "Returns full string definition for message of type 'DeleteTeachingTrajectory-request"
  (cl:format cl:nil "string teachingTrajectoryName ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteTeachingTrajectory-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'teachingTrajectoryName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteTeachingTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteTeachingTrajectory-request
    (cl:cons ':teachingTrajectoryName (teachingTrajectoryName msg))
))
;//! \htmlinclude DeleteTeachingTrajectory-response.msg.html

(cl:defclass <DeleteTeachingTrajectory-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DeleteTeachingTrajectory-response (<DeleteTeachingTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteTeachingTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteTeachingTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<DeleteTeachingTrajectory-response> is deprecated: use torobo_msgs-srv:DeleteTeachingTrajectory-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DeleteTeachingTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:success-val is deprecated.  Use torobo_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteTeachingTrajectory-response>) ostream)
  "Serializes a message object of type '<DeleteTeachingTrajectory-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteTeachingTrajectory-response>) istream)
  "Deserializes a message object of type '<DeleteTeachingTrajectory-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteTeachingTrajectory-response>)))
  "Returns string type for a service object of type '<DeleteTeachingTrajectory-response>"
  "torobo_msgs/DeleteTeachingTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteTeachingTrajectory-response)))
  "Returns string type for a service object of type 'DeleteTeachingTrajectory-response"
  "torobo_msgs/DeleteTeachingTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteTeachingTrajectory-response>)))
  "Returns md5sum for a message object of type '<DeleteTeachingTrajectory-response>"
  "562d1a1ce249e5404efbe936d40d377a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteTeachingTrajectory-response)))
  "Returns md5sum for a message object of type 'DeleteTeachingTrajectory-response"
  "562d1a1ce249e5404efbe936d40d377a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteTeachingTrajectory-response>)))
  "Returns full string definition for message of type '<DeleteTeachingTrajectory-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteTeachingTrajectory-response)))
  "Returns full string definition for message of type 'DeleteTeachingTrajectory-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteTeachingTrajectory-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteTeachingTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteTeachingTrajectory-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteTeachingTrajectory)))
  'DeleteTeachingTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteTeachingTrajectory)))
  'DeleteTeachingTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteTeachingTrajectory)))
  "Returns string type for a service object of type '<DeleteTeachingTrajectory>"
  "torobo_msgs/DeleteTeachingTrajectory")