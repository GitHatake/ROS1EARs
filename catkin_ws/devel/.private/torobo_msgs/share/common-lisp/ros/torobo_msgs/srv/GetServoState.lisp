; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-srv)


;//! \htmlinclude GetServoState-request.msg.html

(cl:defclass <GetServoState-request> (roslisp-msg-protocol:ros-message)
  ((joint_names
    :reader joint_names
    :initarg :joint_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetServoState-request (<GetServoState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetServoState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetServoState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<GetServoState-request> is deprecated: use torobo_msgs-srv:GetServoState-request instead.")))

(cl:ensure-generic-function 'joint_names-val :lambda-list '(m))
(cl:defmethod joint_names-val ((m <GetServoState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:joint_names-val is deprecated.  Use torobo_msgs-srv:joint_names instead.")
  (joint_names m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetServoState-request>) ostream)
  "Serializes a message object of type '<GetServoState-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetServoState-request>) istream)
  "Deserializes a message object of type '<GetServoState-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetServoState-request>)))
  "Returns string type for a service object of type '<GetServoState-request>"
  "torobo_msgs/GetServoStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetServoState-request)))
  "Returns string type for a service object of type 'GetServoState-request"
  "torobo_msgs/GetServoStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetServoState-request>)))
  "Returns md5sum for a message object of type '<GetServoState-request>"
  "97bcac43fb1f87b145f4ed8da59438f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetServoState-request)))
  "Returns md5sum for a message object of type 'GetServoState-request"
  "97bcac43fb1f87b145f4ed8da59438f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetServoState-request>)))
  "Returns full string definition for message of type '<GetServoState-request>"
  (cl:format cl:nil "string[] joint_names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetServoState-request)))
  "Returns full string definition for message of type 'GetServoState-request"
  (cl:format cl:nil "string[] joint_names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetServoState-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetServoState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetServoState-request
    (cl:cons ':joint_names (joint_names msg))
))
;//! \htmlinclude GetServoState-response.msg.html

(cl:defclass <GetServoState-response> (roslisp-msg-protocol:ros-message)
  ((is_servo_on
    :reader is_servo_on
    :initarg :is_servo_on
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass GetServoState-response (<GetServoState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetServoState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetServoState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<GetServoState-response> is deprecated: use torobo_msgs-srv:GetServoState-response instead.")))

(cl:ensure-generic-function 'is_servo_on-val :lambda-list '(m))
(cl:defmethod is_servo_on-val ((m <GetServoState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:is_servo_on-val is deprecated.  Use torobo_msgs-srv:is_servo_on instead.")
  (is_servo_on m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetServoState-response>) ostream)
  "Serializes a message object of type '<GetServoState-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'is_servo_on))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'is_servo_on))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetServoState-response>) istream)
  "Deserializes a message object of type '<GetServoState-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'is_servo_on) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'is_servo_on)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetServoState-response>)))
  "Returns string type for a service object of type '<GetServoState-response>"
  "torobo_msgs/GetServoStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetServoState-response)))
  "Returns string type for a service object of type 'GetServoState-response"
  "torobo_msgs/GetServoStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetServoState-response>)))
  "Returns md5sum for a message object of type '<GetServoState-response>"
  "97bcac43fb1f87b145f4ed8da59438f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetServoState-response)))
  "Returns md5sum for a message object of type 'GetServoState-response"
  "97bcac43fb1f87b145f4ed8da59438f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetServoState-response>)))
  "Returns full string definition for message of type '<GetServoState-response>"
  (cl:format cl:nil "bool[] is_servo_on~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetServoState-response)))
  "Returns full string definition for message of type 'GetServoState-response"
  (cl:format cl:nil "bool[] is_servo_on~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetServoState-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'is_servo_on) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetServoState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetServoState-response
    (cl:cons ':is_servo_on (is_servo_on msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetServoState)))
  'GetServoState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetServoState)))
  'GetServoState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetServoState)))
  "Returns string type for a service object of type '<GetServoState>"
  "torobo_msgs/GetServoState")