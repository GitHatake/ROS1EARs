; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-srv)


;//! \htmlinclude SetZeroEffort-request.msg.html

(cl:defclass <SetZeroEffort-request> (roslisp-msg-protocol:ros-message)
  ((joint_names
    :reader joint_names
    :initarg :joint_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass SetZeroEffort-request (<SetZeroEffort-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetZeroEffort-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetZeroEffort-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<SetZeroEffort-request> is deprecated: use torobo_msgs-srv:SetZeroEffort-request instead.")))

(cl:ensure-generic-function 'joint_names-val :lambda-list '(m))
(cl:defmethod joint_names-val ((m <SetZeroEffort-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:joint_names-val is deprecated.  Use torobo_msgs-srv:joint_names instead.")
  (joint_names m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetZeroEffort-request>) ostream)
  "Serializes a message object of type '<SetZeroEffort-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetZeroEffort-request>) istream)
  "Deserializes a message object of type '<SetZeroEffort-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetZeroEffort-request>)))
  "Returns string type for a service object of type '<SetZeroEffort-request>"
  "torobo_msgs/SetZeroEffortRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetZeroEffort-request)))
  "Returns string type for a service object of type 'SetZeroEffort-request"
  "torobo_msgs/SetZeroEffortRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetZeroEffort-request>)))
  "Returns md5sum for a message object of type '<SetZeroEffort-request>"
  "abb91c83ed030d595b2e5754d356a7f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetZeroEffort-request)))
  "Returns md5sum for a message object of type 'SetZeroEffort-request"
  "abb91c83ed030d595b2e5754d356a7f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetZeroEffort-request>)))
  "Returns full string definition for message of type '<SetZeroEffort-request>"
  (cl:format cl:nil "string[] joint_names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetZeroEffort-request)))
  "Returns full string definition for message of type 'SetZeroEffort-request"
  (cl:format cl:nil "string[] joint_names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetZeroEffort-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetZeroEffort-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetZeroEffort-request
    (cl:cons ':joint_names (joint_names msg))
))
;//! \htmlinclude SetZeroEffort-response.msg.html

(cl:defclass <SetZeroEffort-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetZeroEffort-response (<SetZeroEffort-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetZeroEffort-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetZeroEffort-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<SetZeroEffort-response> is deprecated: use torobo_msgs-srv:SetZeroEffort-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetZeroEffort-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:success-val is deprecated.  Use torobo_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetZeroEffort-response>) ostream)
  "Serializes a message object of type '<SetZeroEffort-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetZeroEffort-response>) istream)
  "Deserializes a message object of type '<SetZeroEffort-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetZeroEffort-response>)))
  "Returns string type for a service object of type '<SetZeroEffort-response>"
  "torobo_msgs/SetZeroEffortResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetZeroEffort-response)))
  "Returns string type for a service object of type 'SetZeroEffort-response"
  "torobo_msgs/SetZeroEffortResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetZeroEffort-response>)))
  "Returns md5sum for a message object of type '<SetZeroEffort-response>"
  "abb91c83ed030d595b2e5754d356a7f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetZeroEffort-response)))
  "Returns md5sum for a message object of type 'SetZeroEffort-response"
  "abb91c83ed030d595b2e5754d356a7f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetZeroEffort-response>)))
  "Returns full string definition for message of type '<SetZeroEffort-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetZeroEffort-response)))
  "Returns full string definition for message of type 'SetZeroEffort-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetZeroEffort-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetZeroEffort-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetZeroEffort-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetZeroEffort)))
  'SetZeroEffort-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetZeroEffort)))
  'SetZeroEffort-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetZeroEffort)))
  "Returns string type for a service object of type '<SetZeroEffort>"
  "torobo_msgs/SetZeroEffort")