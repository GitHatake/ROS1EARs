; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-srv)


;//! \htmlinclude SetRobotControllerParameter-request.msg.html

(cl:defclass <SetRobotControllerParameter-request> (roslisp-msg-protocol:ros-message)
  ((parameter_name
    :reader parameter_name
    :initarg :parameter_name
    :type cl:string
    :initform "")
   (joint_names
    :reader joint_names
    :initarg :joint_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (parameter_values
    :reader parameter_values
    :initarg :parameter_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetRobotControllerParameter-request (<SetRobotControllerParameter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRobotControllerParameter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRobotControllerParameter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<SetRobotControllerParameter-request> is deprecated: use torobo_msgs-srv:SetRobotControllerParameter-request instead.")))

(cl:ensure-generic-function 'parameter_name-val :lambda-list '(m))
(cl:defmethod parameter_name-val ((m <SetRobotControllerParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:parameter_name-val is deprecated.  Use torobo_msgs-srv:parameter_name instead.")
  (parameter_name m))

(cl:ensure-generic-function 'joint_names-val :lambda-list '(m))
(cl:defmethod joint_names-val ((m <SetRobotControllerParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:joint_names-val is deprecated.  Use torobo_msgs-srv:joint_names instead.")
  (joint_names m))

(cl:ensure-generic-function 'parameter_values-val :lambda-list '(m))
(cl:defmethod parameter_values-val ((m <SetRobotControllerParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:parameter_values-val is deprecated.  Use torobo_msgs-srv:parameter_values instead.")
  (parameter_values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRobotControllerParameter-request>) ostream)
  "Serializes a message object of type '<SetRobotControllerParameter-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parameter_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parameter_name))
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parameter_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'parameter_values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRobotControllerParameter-request>) istream)
  "Deserializes a message object of type '<SetRobotControllerParameter-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameter_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parameter_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parameter_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parameter_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRobotControllerParameter-request>)))
  "Returns string type for a service object of type '<SetRobotControllerParameter-request>"
  "torobo_msgs/SetRobotControllerParameterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobotControllerParameter-request)))
  "Returns string type for a service object of type 'SetRobotControllerParameter-request"
  "torobo_msgs/SetRobotControllerParameterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRobotControllerParameter-request>)))
  "Returns md5sum for a message object of type '<SetRobotControllerParameter-request>"
  "f6a7b3b84aaf90a78da4f4ecdbe454b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRobotControllerParameter-request)))
  "Returns md5sum for a message object of type 'SetRobotControllerParameter-request"
  "f6a7b3b84aaf90a78da4f4ecdbe454b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRobotControllerParameter-request>)))
  "Returns full string definition for message of type '<SetRobotControllerParameter-request>"
  (cl:format cl:nil "string parameter_name~%string[] joint_names~%float32[] parameter_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRobotControllerParameter-request)))
  "Returns full string definition for message of type 'SetRobotControllerParameter-request"
  (cl:format cl:nil "string parameter_name~%string[] joint_names~%float32[] parameter_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRobotControllerParameter-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'parameter_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parameter_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRobotControllerParameter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRobotControllerParameter-request
    (cl:cons ':parameter_name (parameter_name msg))
    (cl:cons ':joint_names (joint_names msg))
    (cl:cons ':parameter_values (parameter_values msg))
))
;//! \htmlinclude SetRobotControllerParameter-response.msg.html

(cl:defclass <SetRobotControllerParameter-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetRobotControllerParameter-response (<SetRobotControllerParameter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRobotControllerParameter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRobotControllerParameter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<SetRobotControllerParameter-response> is deprecated: use torobo_msgs-srv:SetRobotControllerParameter-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetRobotControllerParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:success-val is deprecated.  Use torobo_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRobotControllerParameter-response>) ostream)
  "Serializes a message object of type '<SetRobotControllerParameter-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRobotControllerParameter-response>) istream)
  "Deserializes a message object of type '<SetRobotControllerParameter-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRobotControllerParameter-response>)))
  "Returns string type for a service object of type '<SetRobotControllerParameter-response>"
  "torobo_msgs/SetRobotControllerParameterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobotControllerParameter-response)))
  "Returns string type for a service object of type 'SetRobotControllerParameter-response"
  "torobo_msgs/SetRobotControllerParameterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRobotControllerParameter-response>)))
  "Returns md5sum for a message object of type '<SetRobotControllerParameter-response>"
  "f6a7b3b84aaf90a78da4f4ecdbe454b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRobotControllerParameter-response)))
  "Returns md5sum for a message object of type 'SetRobotControllerParameter-response"
  "f6a7b3b84aaf90a78da4f4ecdbe454b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRobotControllerParameter-response>)))
  "Returns full string definition for message of type '<SetRobotControllerParameter-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRobotControllerParameter-response)))
  "Returns full string definition for message of type 'SetRobotControllerParameter-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRobotControllerParameter-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRobotControllerParameter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRobotControllerParameter-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetRobotControllerParameter)))
  'SetRobotControllerParameter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetRobotControllerParameter)))
  'SetRobotControllerParameter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobotControllerParameter)))
  "Returns string type for a service object of type '<SetRobotControllerParameter>"
  "torobo_msgs/SetRobotControllerParameter")