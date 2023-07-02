; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-srv)


;//! \htmlinclude GetTeachingPointNames-request.msg.html

(cl:defclass <GetTeachingPointNames-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetTeachingPointNames-request (<GetTeachingPointNames-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTeachingPointNames-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTeachingPointNames-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<GetTeachingPointNames-request> is deprecated: use torobo_msgs-srv:GetTeachingPointNames-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTeachingPointNames-request>) ostream)
  "Serializes a message object of type '<GetTeachingPointNames-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTeachingPointNames-request>) istream)
  "Deserializes a message object of type '<GetTeachingPointNames-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTeachingPointNames-request>)))
  "Returns string type for a service object of type '<GetTeachingPointNames-request>"
  "torobo_msgs/GetTeachingPointNamesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTeachingPointNames-request)))
  "Returns string type for a service object of type 'GetTeachingPointNames-request"
  "torobo_msgs/GetTeachingPointNamesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTeachingPointNames-request>)))
  "Returns md5sum for a message object of type '<GetTeachingPointNames-request>"
  "86750bf3b770c5fb06c0dead2089ecbf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTeachingPointNames-request)))
  "Returns md5sum for a message object of type 'GetTeachingPointNames-request"
  "86750bf3b770c5fb06c0dead2089ecbf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTeachingPointNames-request>)))
  "Returns full string definition for message of type '<GetTeachingPointNames-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTeachingPointNames-request)))
  "Returns full string definition for message of type 'GetTeachingPointNames-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTeachingPointNames-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTeachingPointNames-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTeachingPointNames-request
))
;//! \htmlinclude GetTeachingPointNames-response.msg.html

(cl:defclass <GetTeachingPointNames-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (teachingPointNames
    :reader teachingPointNames
    :initarg :teachingPointNames
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetTeachingPointNames-response (<GetTeachingPointNames-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTeachingPointNames-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTeachingPointNames-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<GetTeachingPointNames-response> is deprecated: use torobo_msgs-srv:GetTeachingPointNames-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetTeachingPointNames-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:success-val is deprecated.  Use torobo_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'teachingPointNames-val :lambda-list '(m))
(cl:defmethod teachingPointNames-val ((m <GetTeachingPointNames-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:teachingPointNames-val is deprecated.  Use torobo_msgs-srv:teachingPointNames instead.")
  (teachingPointNames m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTeachingPointNames-response>) ostream)
  "Serializes a message object of type '<GetTeachingPointNames-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'teachingPointNames))))
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
   (cl:slot-value msg 'teachingPointNames))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTeachingPointNames-response>) istream)
  "Deserializes a message object of type '<GetTeachingPointNames-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'teachingPointNames) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'teachingPointNames)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTeachingPointNames-response>)))
  "Returns string type for a service object of type '<GetTeachingPointNames-response>"
  "torobo_msgs/GetTeachingPointNamesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTeachingPointNames-response)))
  "Returns string type for a service object of type 'GetTeachingPointNames-response"
  "torobo_msgs/GetTeachingPointNamesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTeachingPointNames-response>)))
  "Returns md5sum for a message object of type '<GetTeachingPointNames-response>"
  "86750bf3b770c5fb06c0dead2089ecbf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTeachingPointNames-response)))
  "Returns md5sum for a message object of type 'GetTeachingPointNames-response"
  "86750bf3b770c5fb06c0dead2089ecbf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTeachingPointNames-response>)))
  "Returns full string definition for message of type '<GetTeachingPointNames-response>"
  (cl:format cl:nil "bool success~%string[] teachingPointNames~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTeachingPointNames-response)))
  "Returns full string definition for message of type 'GetTeachingPointNames-response"
  (cl:format cl:nil "bool success~%string[] teachingPointNames~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTeachingPointNames-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'teachingPointNames) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTeachingPointNames-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTeachingPointNames-response
    (cl:cons ':success (success msg))
    (cl:cons ':teachingPointNames (teachingPointNames msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTeachingPointNames)))
  'GetTeachingPointNames-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTeachingPointNames)))
  'GetTeachingPointNames-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTeachingPointNames)))
  "Returns string type for a service object of type '<GetTeachingPointNames>"
  "torobo_msgs/GetTeachingPointNames")