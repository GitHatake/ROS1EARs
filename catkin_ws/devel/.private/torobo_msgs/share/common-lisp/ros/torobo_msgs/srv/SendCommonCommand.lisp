; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-srv)


;//! \htmlinclude SendCommonCommand-request.msg.html

(cl:defclass <SendCommonCommand-request> (roslisp-msg-protocol:ros-message)
  ((joint_names
    :reader joint_names
    :initarg :joint_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (whole_order
    :reader whole_order
    :initarg :whole_order
    :type cl:integer
    :initform 0)
   (joint_order
    :reader joint_order
    :initarg :joint_order
    :type cl:integer
    :initform 0)
   (value1
    :reader value1
    :initarg :value1
    :type cl:float
    :initform 0.0)
   (value2
    :reader value2
    :initarg :value2
    :type cl:float
    :initform 0.0)
   (value3
    :reader value3
    :initarg :value3
    :type cl:float
    :initform 0.0)
   (value4
    :reader value4
    :initarg :value4
    :type cl:float
    :initform 0.0))
)

(cl:defclass SendCommonCommand-request (<SendCommonCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendCommonCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendCommonCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<SendCommonCommand-request> is deprecated: use torobo_msgs-srv:SendCommonCommand-request instead.")))

(cl:ensure-generic-function 'joint_names-val :lambda-list '(m))
(cl:defmethod joint_names-val ((m <SendCommonCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:joint_names-val is deprecated.  Use torobo_msgs-srv:joint_names instead.")
  (joint_names m))

(cl:ensure-generic-function 'whole_order-val :lambda-list '(m))
(cl:defmethod whole_order-val ((m <SendCommonCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:whole_order-val is deprecated.  Use torobo_msgs-srv:whole_order instead.")
  (whole_order m))

(cl:ensure-generic-function 'joint_order-val :lambda-list '(m))
(cl:defmethod joint_order-val ((m <SendCommonCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:joint_order-val is deprecated.  Use torobo_msgs-srv:joint_order instead.")
  (joint_order m))

(cl:ensure-generic-function 'value1-val :lambda-list '(m))
(cl:defmethod value1-val ((m <SendCommonCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:value1-val is deprecated.  Use torobo_msgs-srv:value1 instead.")
  (value1 m))

(cl:ensure-generic-function 'value2-val :lambda-list '(m))
(cl:defmethod value2-val ((m <SendCommonCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:value2-val is deprecated.  Use torobo_msgs-srv:value2 instead.")
  (value2 m))

(cl:ensure-generic-function 'value3-val :lambda-list '(m))
(cl:defmethod value3-val ((m <SendCommonCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:value3-val is deprecated.  Use torobo_msgs-srv:value3 instead.")
  (value3 m))

(cl:ensure-generic-function 'value4-val :lambda-list '(m))
(cl:defmethod value4-val ((m <SendCommonCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:value4-val is deprecated.  Use torobo_msgs-srv:value4 instead.")
  (value4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendCommonCommand-request>) ostream)
  "Serializes a message object of type '<SendCommonCommand-request>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'whole_order)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'whole_order)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'whole_order)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'whole_order)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joint_order)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joint_order)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'joint_order)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'joint_order)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendCommonCommand-request>) istream)
  "Deserializes a message object of type '<SendCommonCommand-request>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'whole_order)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'whole_order)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'whole_order)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'whole_order)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joint_order)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joint_order)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'joint_order)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'joint_order)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value4) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendCommonCommand-request>)))
  "Returns string type for a service object of type '<SendCommonCommand-request>"
  "torobo_msgs/SendCommonCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendCommonCommand-request)))
  "Returns string type for a service object of type 'SendCommonCommand-request"
  "torobo_msgs/SendCommonCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendCommonCommand-request>)))
  "Returns md5sum for a message object of type '<SendCommonCommand-request>"
  "64dbb1a2af96fe7e3d28eaf27482f2f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendCommonCommand-request)))
  "Returns md5sum for a message object of type 'SendCommonCommand-request"
  "64dbb1a2af96fe7e3d28eaf27482f2f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendCommonCommand-request>)))
  "Returns full string definition for message of type '<SendCommonCommand-request>"
  (cl:format cl:nil "string[] joint_names~%uint32 whole_order~%uint32 joint_order~%float32 value1~%float32 value2~%float32 value3~%float32 value4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendCommonCommand-request)))
  "Returns full string definition for message of type 'SendCommonCommand-request"
  (cl:format cl:nil "string[] joint_names~%uint32 whole_order~%uint32 joint_order~%float32 value1~%float32 value2~%float32 value3~%float32 value4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendCommonCommand-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendCommonCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendCommonCommand-request
    (cl:cons ':joint_names (joint_names msg))
    (cl:cons ':whole_order (whole_order msg))
    (cl:cons ':joint_order (joint_order msg))
    (cl:cons ':value1 (value1 msg))
    (cl:cons ':value2 (value2 msg))
    (cl:cons ':value3 (value3 msg))
    (cl:cons ':value4 (value4 msg))
))
;//! \htmlinclude SendCommonCommand-response.msg.html

(cl:defclass <SendCommonCommand-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SendCommonCommand-response (<SendCommonCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendCommonCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendCommonCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<SendCommonCommand-response> is deprecated: use torobo_msgs-srv:SendCommonCommand-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SendCommonCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:success-val is deprecated.  Use torobo_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendCommonCommand-response>) ostream)
  "Serializes a message object of type '<SendCommonCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendCommonCommand-response>) istream)
  "Deserializes a message object of type '<SendCommonCommand-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendCommonCommand-response>)))
  "Returns string type for a service object of type '<SendCommonCommand-response>"
  "torobo_msgs/SendCommonCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendCommonCommand-response)))
  "Returns string type for a service object of type 'SendCommonCommand-response"
  "torobo_msgs/SendCommonCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendCommonCommand-response>)))
  "Returns md5sum for a message object of type '<SendCommonCommand-response>"
  "64dbb1a2af96fe7e3d28eaf27482f2f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendCommonCommand-response)))
  "Returns md5sum for a message object of type 'SendCommonCommand-response"
  "64dbb1a2af96fe7e3d28eaf27482f2f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendCommonCommand-response>)))
  "Returns full string definition for message of type '<SendCommonCommand-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendCommonCommand-response)))
  "Returns full string definition for message of type 'SendCommonCommand-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendCommonCommand-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendCommonCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendCommonCommand-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendCommonCommand)))
  'SendCommonCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendCommonCommand)))
  'SendCommonCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendCommonCommand)))
  "Returns string type for a service object of type '<SendCommonCommand>"
  "torobo_msgs/SendCommonCommand")