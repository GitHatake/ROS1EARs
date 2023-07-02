; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-srv)


;//! \htmlinclude ErrorReset-request.msg.html

(cl:defclass <ErrorReset-request> (roslisp-msg-protocol:ros-message)
  ((joint_names
    :reader joint_names
    :initarg :joint_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ErrorReset-request (<ErrorReset-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ErrorReset-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ErrorReset-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<ErrorReset-request> is deprecated: use torobo_msgs-srv:ErrorReset-request instead.")))

(cl:ensure-generic-function 'joint_names-val :lambda-list '(m))
(cl:defmethod joint_names-val ((m <ErrorReset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:joint_names-val is deprecated.  Use torobo_msgs-srv:joint_names instead.")
  (joint_names m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ErrorReset-request>) ostream)
  "Serializes a message object of type '<ErrorReset-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'joint_names))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ErrorReset-request>) istream)
  "Deserializes a message object of type '<ErrorReset-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ErrorReset-request>)))
  "Returns string type for a service object of type '<ErrorReset-request>"
  "torobo_msgs/ErrorResetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ErrorReset-request)))
  "Returns string type for a service object of type 'ErrorReset-request"
  "torobo_msgs/ErrorResetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ErrorReset-request>)))
  "Returns md5sum for a message object of type '<ErrorReset-request>"
  "abb91c83ed030d595b2e5754d356a7f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ErrorReset-request)))
  "Returns md5sum for a message object of type 'ErrorReset-request"
  "abb91c83ed030d595b2e5754d356a7f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ErrorReset-request>)))
  "Returns full string definition for message of type '<ErrorReset-request>"
  (cl:format cl:nil "string[] joint_names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ErrorReset-request)))
  "Returns full string definition for message of type 'ErrorReset-request"
  (cl:format cl:nil "string[] joint_names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ErrorReset-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ErrorReset-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ErrorReset-request
    (cl:cons ':joint_names (joint_names msg))
))
;//! \htmlinclude ErrorReset-response.msg.html

(cl:defclass <ErrorReset-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ErrorReset-response (<ErrorReset-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ErrorReset-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ErrorReset-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<ErrorReset-response> is deprecated: use torobo_msgs-srv:ErrorReset-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ErrorReset-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:success-val is deprecated.  Use torobo_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ErrorReset-response>) ostream)
  "Serializes a message object of type '<ErrorReset-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ErrorReset-response>) istream)
  "Deserializes a message object of type '<ErrorReset-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ErrorReset-response>)))
  "Returns string type for a service object of type '<ErrorReset-response>"
  "torobo_msgs/ErrorResetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ErrorReset-response)))
  "Returns string type for a service object of type 'ErrorReset-response"
  "torobo_msgs/ErrorResetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ErrorReset-response>)))
  "Returns md5sum for a message object of type '<ErrorReset-response>"
  "abb91c83ed030d595b2e5754d356a7f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ErrorReset-response)))
  "Returns md5sum for a message object of type 'ErrorReset-response"
  "abb91c83ed030d595b2e5754d356a7f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ErrorReset-response>)))
  "Returns full string definition for message of type '<ErrorReset-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ErrorReset-response)))
  "Returns full string definition for message of type 'ErrorReset-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ErrorReset-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ErrorReset-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ErrorReset-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ErrorReset)))
  'ErrorReset-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ErrorReset)))
  'ErrorReset-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ErrorReset)))
  "Returns string type for a service object of type '<ErrorReset>"
  "torobo_msgs/ErrorReset")