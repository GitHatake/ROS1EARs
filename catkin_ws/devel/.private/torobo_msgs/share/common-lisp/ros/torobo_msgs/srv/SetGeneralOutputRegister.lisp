; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-srv)


;//! \htmlinclude SetGeneralOutputRegister-request.msg.html

(cl:defclass <SetGeneralOutputRegister-request> (roslisp-msg-protocol:ros-message)
  ((general_register_number
    :reader general_register_number
    :initarg :general_register_number
    :type cl:integer
    :initform 0)
   (parameter_name
    :reader parameter_name
    :initarg :parameter_name
    :type cl:string
    :initform "")
   (joint_names
    :reader joint_names
    :initarg :joint_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass SetGeneralOutputRegister-request (<SetGeneralOutputRegister-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGeneralOutputRegister-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGeneralOutputRegister-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<SetGeneralOutputRegister-request> is deprecated: use torobo_msgs-srv:SetGeneralOutputRegister-request instead.")))

(cl:ensure-generic-function 'general_register_number-val :lambda-list '(m))
(cl:defmethod general_register_number-val ((m <SetGeneralOutputRegister-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:general_register_number-val is deprecated.  Use torobo_msgs-srv:general_register_number instead.")
  (general_register_number m))

(cl:ensure-generic-function 'parameter_name-val :lambda-list '(m))
(cl:defmethod parameter_name-val ((m <SetGeneralOutputRegister-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:parameter_name-val is deprecated.  Use torobo_msgs-srv:parameter_name instead.")
  (parameter_name m))

(cl:ensure-generic-function 'joint_names-val :lambda-list '(m))
(cl:defmethod joint_names-val ((m <SetGeneralOutputRegister-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:joint_names-val is deprecated.  Use torobo_msgs-srv:joint_names instead.")
  (joint_names m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGeneralOutputRegister-request>) ostream)
  "Serializes a message object of type '<SetGeneralOutputRegister-request>"
  (cl:let* ((signed (cl:slot-value msg 'general_register_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGeneralOutputRegister-request>) istream)
  "Deserializes a message object of type '<SetGeneralOutputRegister-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'general_register_number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGeneralOutputRegister-request>)))
  "Returns string type for a service object of type '<SetGeneralOutputRegister-request>"
  "torobo_msgs/SetGeneralOutputRegisterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGeneralOutputRegister-request)))
  "Returns string type for a service object of type 'SetGeneralOutputRegister-request"
  "torobo_msgs/SetGeneralOutputRegisterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGeneralOutputRegister-request>)))
  "Returns md5sum for a message object of type '<SetGeneralOutputRegister-request>"
  "f1fc8a310987bc35733b0d0e64490c68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGeneralOutputRegister-request)))
  "Returns md5sum for a message object of type 'SetGeneralOutputRegister-request"
  "f1fc8a310987bc35733b0d0e64490c68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGeneralOutputRegister-request>)))
  "Returns full string definition for message of type '<SetGeneralOutputRegister-request>"
  (cl:format cl:nil "# \"general_register_number\" : Target general register number [0-3]~%# \"parameter_name\" : parameter name set to target general regiseter~%# \"joint_names\" : Target joint names~%int32 general_register_number~%string parameter_name~%string[] joint_names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGeneralOutputRegister-request)))
  "Returns full string definition for message of type 'SetGeneralOutputRegister-request"
  (cl:format cl:nil "# \"general_register_number\" : Target general register number [0-3]~%# \"parameter_name\" : parameter name set to target general regiseter~%# \"joint_names\" : Target joint names~%int32 general_register_number~%string parameter_name~%string[] joint_names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGeneralOutputRegister-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'parameter_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGeneralOutputRegister-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGeneralOutputRegister-request
    (cl:cons ':general_register_number (general_register_number msg))
    (cl:cons ':parameter_name (parameter_name msg))
    (cl:cons ':joint_names (joint_names msg))
))
;//! \htmlinclude SetGeneralOutputRegister-response.msg.html

(cl:defclass <SetGeneralOutputRegister-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetGeneralOutputRegister-response (<SetGeneralOutputRegister-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGeneralOutputRegister-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGeneralOutputRegister-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<SetGeneralOutputRegister-response> is deprecated: use torobo_msgs-srv:SetGeneralOutputRegister-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetGeneralOutputRegister-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:success-val is deprecated.  Use torobo_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGeneralOutputRegister-response>) ostream)
  "Serializes a message object of type '<SetGeneralOutputRegister-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGeneralOutputRegister-response>) istream)
  "Deserializes a message object of type '<SetGeneralOutputRegister-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGeneralOutputRegister-response>)))
  "Returns string type for a service object of type '<SetGeneralOutputRegister-response>"
  "torobo_msgs/SetGeneralOutputRegisterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGeneralOutputRegister-response)))
  "Returns string type for a service object of type 'SetGeneralOutputRegister-response"
  "torobo_msgs/SetGeneralOutputRegisterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGeneralOutputRegister-response>)))
  "Returns md5sum for a message object of type '<SetGeneralOutputRegister-response>"
  "f1fc8a310987bc35733b0d0e64490c68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGeneralOutputRegister-response)))
  "Returns md5sum for a message object of type 'SetGeneralOutputRegister-response"
  "f1fc8a310987bc35733b0d0e64490c68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGeneralOutputRegister-response>)))
  "Returns full string definition for message of type '<SetGeneralOutputRegister-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGeneralOutputRegister-response)))
  "Returns full string definition for message of type 'SetGeneralOutputRegister-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGeneralOutputRegister-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGeneralOutputRegister-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGeneralOutputRegister-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetGeneralOutputRegister)))
  'SetGeneralOutputRegister-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetGeneralOutputRegister)))
  'SetGeneralOutputRegister-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGeneralOutputRegister)))
  "Returns string type for a service object of type '<SetGeneralOutputRegister>"
  "torobo_msgs/SetGeneralOutputRegister")