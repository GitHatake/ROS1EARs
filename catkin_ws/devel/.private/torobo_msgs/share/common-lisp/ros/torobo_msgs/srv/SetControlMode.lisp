; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-srv)


;//! \htmlinclude SetControlMode-request.msg.html

(cl:defclass <SetControlMode-request> (roslisp-msg-protocol:ros-message)
  ((control_mode_name
    :reader control_mode_name
    :initarg :control_mode_name
    :type cl:string
    :initform "")
   (joint_names
    :reader joint_names
    :initarg :joint_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass SetControlMode-request (<SetControlMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetControlMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetControlMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<SetControlMode-request> is deprecated: use torobo_msgs-srv:SetControlMode-request instead.")))

(cl:ensure-generic-function 'control_mode_name-val :lambda-list '(m))
(cl:defmethod control_mode_name-val ((m <SetControlMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:control_mode_name-val is deprecated.  Use torobo_msgs-srv:control_mode_name instead.")
  (control_mode_name m))

(cl:ensure-generic-function 'joint_names-val :lambda-list '(m))
(cl:defmethod joint_names-val ((m <SetControlMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:joint_names-val is deprecated.  Use torobo_msgs-srv:joint_names instead.")
  (joint_names m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetControlMode-request>) ostream)
  "Serializes a message object of type '<SetControlMode-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'control_mode_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'control_mode_name))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetControlMode-request>) istream)
  "Deserializes a message object of type '<SetControlMode-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'control_mode_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'control_mode_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetControlMode-request>)))
  "Returns string type for a service object of type '<SetControlMode-request>"
  "torobo_msgs/SetControlModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetControlMode-request)))
  "Returns string type for a service object of type 'SetControlMode-request"
  "torobo_msgs/SetControlModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetControlMode-request>)))
  "Returns md5sum for a message object of type '<SetControlMode-request>"
  "e26e80bafb3f23a073b513f0feca433e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetControlMode-request)))
  "Returns md5sum for a message object of type 'SetControlMode-request"
  "e26e80bafb3f23a073b513f0feca433e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetControlMode-request>)))
  "Returns full string definition for message of type '<SetControlMode-request>"
  (cl:format cl:nil "# available control_mode_name~%# \"position\" : Position control mode~%# \"velocity\" : Velocity control mode~%# \"current\" : Current control mode~%# \"external_force_following\" : External force following control mode~%string control_mode_name~%string[] joint_names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetControlMode-request)))
  "Returns full string definition for message of type 'SetControlMode-request"
  (cl:format cl:nil "# available control_mode_name~%# \"position\" : Position control mode~%# \"velocity\" : Velocity control mode~%# \"current\" : Current control mode~%# \"external_force_following\" : External force following control mode~%string control_mode_name~%string[] joint_names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetControlMode-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'control_mode_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetControlMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetControlMode-request
    (cl:cons ':control_mode_name (control_mode_name msg))
    (cl:cons ':joint_names (joint_names msg))
))
;//! \htmlinclude SetControlMode-response.msg.html

(cl:defclass <SetControlMode-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetControlMode-response (<SetControlMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetControlMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetControlMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<SetControlMode-response> is deprecated: use torobo_msgs-srv:SetControlMode-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetControlMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:success-val is deprecated.  Use torobo_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetControlMode-response>) ostream)
  "Serializes a message object of type '<SetControlMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetControlMode-response>) istream)
  "Deserializes a message object of type '<SetControlMode-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetControlMode-response>)))
  "Returns string type for a service object of type '<SetControlMode-response>"
  "torobo_msgs/SetControlModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetControlMode-response)))
  "Returns string type for a service object of type 'SetControlMode-response"
  "torobo_msgs/SetControlModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetControlMode-response>)))
  "Returns md5sum for a message object of type '<SetControlMode-response>"
  "e26e80bafb3f23a073b513f0feca433e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetControlMode-response)))
  "Returns md5sum for a message object of type 'SetControlMode-response"
  "e26e80bafb3f23a073b513f0feca433e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetControlMode-response>)))
  "Returns full string definition for message of type '<SetControlMode-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetControlMode-response)))
  "Returns full string definition for message of type 'SetControlMode-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetControlMode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetControlMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetControlMode-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetControlMode)))
  'SetControlMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetControlMode)))
  'SetControlMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetControlMode)))
  "Returns string type for a service object of type '<SetControlMode>"
  "torobo_msgs/SetControlMode")