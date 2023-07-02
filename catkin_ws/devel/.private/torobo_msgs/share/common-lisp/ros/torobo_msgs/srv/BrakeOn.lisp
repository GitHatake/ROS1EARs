; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-srv)


;//! \htmlinclude BrakeOn-request.msg.html

(cl:defclass <BrakeOn-request> (roslisp-msg-protocol:ros-message)
  ((joint_names
    :reader joint_names
    :initarg :joint_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass BrakeOn-request (<BrakeOn-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeOn-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeOn-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<BrakeOn-request> is deprecated: use torobo_msgs-srv:BrakeOn-request instead.")))

(cl:ensure-generic-function 'joint_names-val :lambda-list '(m))
(cl:defmethod joint_names-val ((m <BrakeOn-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:joint_names-val is deprecated.  Use torobo_msgs-srv:joint_names instead.")
  (joint_names m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeOn-request>) ostream)
  "Serializes a message object of type '<BrakeOn-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeOn-request>) istream)
  "Deserializes a message object of type '<BrakeOn-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeOn-request>)))
  "Returns string type for a service object of type '<BrakeOn-request>"
  "torobo_msgs/BrakeOnRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeOn-request)))
  "Returns string type for a service object of type 'BrakeOn-request"
  "torobo_msgs/BrakeOnRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeOn-request>)))
  "Returns md5sum for a message object of type '<BrakeOn-request>"
  "abb91c83ed030d595b2e5754d356a7f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeOn-request)))
  "Returns md5sum for a message object of type 'BrakeOn-request"
  "abb91c83ed030d595b2e5754d356a7f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeOn-request>)))
  "Returns full string definition for message of type '<BrakeOn-request>"
  (cl:format cl:nil "string[] joint_names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeOn-request)))
  "Returns full string definition for message of type 'BrakeOn-request"
  (cl:format cl:nil "string[] joint_names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeOn-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeOn-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeOn-request
    (cl:cons ':joint_names (joint_names msg))
))
;//! \htmlinclude BrakeOn-response.msg.html

(cl:defclass <BrakeOn-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BrakeOn-response (<BrakeOn-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeOn-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeOn-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<BrakeOn-response> is deprecated: use torobo_msgs-srv:BrakeOn-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <BrakeOn-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:success-val is deprecated.  Use torobo_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeOn-response>) ostream)
  "Serializes a message object of type '<BrakeOn-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeOn-response>) istream)
  "Deserializes a message object of type '<BrakeOn-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeOn-response>)))
  "Returns string type for a service object of type '<BrakeOn-response>"
  "torobo_msgs/BrakeOnResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeOn-response)))
  "Returns string type for a service object of type 'BrakeOn-response"
  "torobo_msgs/BrakeOnResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeOn-response>)))
  "Returns md5sum for a message object of type '<BrakeOn-response>"
  "abb91c83ed030d595b2e5754d356a7f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeOn-response)))
  "Returns md5sum for a message object of type 'BrakeOn-response"
  "abb91c83ed030d595b2e5754d356a7f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeOn-response>)))
  "Returns full string definition for message of type '<BrakeOn-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeOn-response)))
  "Returns full string definition for message of type 'BrakeOn-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeOn-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeOn-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeOn-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BrakeOn)))
  'BrakeOn-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BrakeOn)))
  'BrakeOn-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeOn)))
  "Returns string type for a service object of type '<BrakeOn>"
  "torobo_msgs/BrakeOn")