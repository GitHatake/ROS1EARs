; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-srv)


;//! \htmlinclude DeleteTeachingPoint-request.msg.html

(cl:defclass <DeleteTeachingPoint-request> (roslisp-msg-protocol:ros-message)
  ((teachingPointName
    :reader teachingPointName
    :initarg :teachingPointName
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteTeachingPoint-request (<DeleteTeachingPoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteTeachingPoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteTeachingPoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<DeleteTeachingPoint-request> is deprecated: use torobo_msgs-srv:DeleteTeachingPoint-request instead.")))

(cl:ensure-generic-function 'teachingPointName-val :lambda-list '(m))
(cl:defmethod teachingPointName-val ((m <DeleteTeachingPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:teachingPointName-val is deprecated.  Use torobo_msgs-srv:teachingPointName instead.")
  (teachingPointName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteTeachingPoint-request>) ostream)
  "Serializes a message object of type '<DeleteTeachingPoint-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'teachingPointName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'teachingPointName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteTeachingPoint-request>) istream)
  "Deserializes a message object of type '<DeleteTeachingPoint-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteTeachingPoint-request>)))
  "Returns string type for a service object of type '<DeleteTeachingPoint-request>"
  "torobo_msgs/DeleteTeachingPointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteTeachingPoint-request)))
  "Returns string type for a service object of type 'DeleteTeachingPoint-request"
  "torobo_msgs/DeleteTeachingPointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteTeachingPoint-request>)))
  "Returns md5sum for a message object of type '<DeleteTeachingPoint-request>"
  "a2c869ed0a6122eb036ee623c16fb042")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteTeachingPoint-request)))
  "Returns md5sum for a message object of type 'DeleteTeachingPoint-request"
  "a2c869ed0a6122eb036ee623c16fb042")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteTeachingPoint-request>)))
  "Returns full string definition for message of type '<DeleteTeachingPoint-request>"
  (cl:format cl:nil "string teachingPointName ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteTeachingPoint-request)))
  "Returns full string definition for message of type 'DeleteTeachingPoint-request"
  (cl:format cl:nil "string teachingPointName ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteTeachingPoint-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'teachingPointName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteTeachingPoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteTeachingPoint-request
    (cl:cons ':teachingPointName (teachingPointName msg))
))
;//! \htmlinclude DeleteTeachingPoint-response.msg.html

(cl:defclass <DeleteTeachingPoint-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DeleteTeachingPoint-response (<DeleteTeachingPoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteTeachingPoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteTeachingPoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<DeleteTeachingPoint-response> is deprecated: use torobo_msgs-srv:DeleteTeachingPoint-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DeleteTeachingPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:success-val is deprecated.  Use torobo_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteTeachingPoint-response>) ostream)
  "Serializes a message object of type '<DeleteTeachingPoint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteTeachingPoint-response>) istream)
  "Deserializes a message object of type '<DeleteTeachingPoint-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteTeachingPoint-response>)))
  "Returns string type for a service object of type '<DeleteTeachingPoint-response>"
  "torobo_msgs/DeleteTeachingPointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteTeachingPoint-response)))
  "Returns string type for a service object of type 'DeleteTeachingPoint-response"
  "torobo_msgs/DeleteTeachingPointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteTeachingPoint-response>)))
  "Returns md5sum for a message object of type '<DeleteTeachingPoint-response>"
  "a2c869ed0a6122eb036ee623c16fb042")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteTeachingPoint-response)))
  "Returns md5sum for a message object of type 'DeleteTeachingPoint-response"
  "a2c869ed0a6122eb036ee623c16fb042")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteTeachingPoint-response>)))
  "Returns full string definition for message of type '<DeleteTeachingPoint-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteTeachingPoint-response)))
  "Returns full string definition for message of type 'DeleteTeachingPoint-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteTeachingPoint-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteTeachingPoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteTeachingPoint-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteTeachingPoint)))
  'DeleteTeachingPoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteTeachingPoint)))
  'DeleteTeachingPoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteTeachingPoint)))
  "Returns string type for a service object of type '<DeleteTeachingPoint>"
  "torobo_msgs/DeleteTeachingPoint")