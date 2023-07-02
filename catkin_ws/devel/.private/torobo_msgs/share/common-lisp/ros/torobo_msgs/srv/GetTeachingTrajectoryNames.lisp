; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-srv)


;//! \htmlinclude GetTeachingTrajectoryNames-request.msg.html

(cl:defclass <GetTeachingTrajectoryNames-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetTeachingTrajectoryNames-request (<GetTeachingTrajectoryNames-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTeachingTrajectoryNames-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTeachingTrajectoryNames-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<GetTeachingTrajectoryNames-request> is deprecated: use torobo_msgs-srv:GetTeachingTrajectoryNames-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTeachingTrajectoryNames-request>) ostream)
  "Serializes a message object of type '<GetTeachingTrajectoryNames-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTeachingTrajectoryNames-request>) istream)
  "Deserializes a message object of type '<GetTeachingTrajectoryNames-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTeachingTrajectoryNames-request>)))
  "Returns string type for a service object of type '<GetTeachingTrajectoryNames-request>"
  "torobo_msgs/GetTeachingTrajectoryNamesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTeachingTrajectoryNames-request)))
  "Returns string type for a service object of type 'GetTeachingTrajectoryNames-request"
  "torobo_msgs/GetTeachingTrajectoryNamesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTeachingTrajectoryNames-request>)))
  "Returns md5sum for a message object of type '<GetTeachingTrajectoryNames-request>"
  "b78c8a970090dfff436e75670b29785b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTeachingTrajectoryNames-request)))
  "Returns md5sum for a message object of type 'GetTeachingTrajectoryNames-request"
  "b78c8a970090dfff436e75670b29785b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTeachingTrajectoryNames-request>)))
  "Returns full string definition for message of type '<GetTeachingTrajectoryNames-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTeachingTrajectoryNames-request)))
  "Returns full string definition for message of type 'GetTeachingTrajectoryNames-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTeachingTrajectoryNames-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTeachingTrajectoryNames-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTeachingTrajectoryNames-request
))
;//! \htmlinclude GetTeachingTrajectoryNames-response.msg.html

(cl:defclass <GetTeachingTrajectoryNames-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (teachingTrajectoryNames
    :reader teachingTrajectoryNames
    :initarg :teachingTrajectoryNames
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetTeachingTrajectoryNames-response (<GetTeachingTrajectoryNames-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTeachingTrajectoryNames-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTeachingTrajectoryNames-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-srv:<GetTeachingTrajectoryNames-response> is deprecated: use torobo_msgs-srv:GetTeachingTrajectoryNames-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetTeachingTrajectoryNames-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:success-val is deprecated.  Use torobo_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'teachingTrajectoryNames-val :lambda-list '(m))
(cl:defmethod teachingTrajectoryNames-val ((m <GetTeachingTrajectoryNames-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-srv:teachingTrajectoryNames-val is deprecated.  Use torobo_msgs-srv:teachingTrajectoryNames instead.")
  (teachingTrajectoryNames m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTeachingTrajectoryNames-response>) ostream)
  "Serializes a message object of type '<GetTeachingTrajectoryNames-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'teachingTrajectoryNames))))
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
   (cl:slot-value msg 'teachingTrajectoryNames))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTeachingTrajectoryNames-response>) istream)
  "Deserializes a message object of type '<GetTeachingTrajectoryNames-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'teachingTrajectoryNames) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'teachingTrajectoryNames)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTeachingTrajectoryNames-response>)))
  "Returns string type for a service object of type '<GetTeachingTrajectoryNames-response>"
  "torobo_msgs/GetTeachingTrajectoryNamesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTeachingTrajectoryNames-response)))
  "Returns string type for a service object of type 'GetTeachingTrajectoryNames-response"
  "torobo_msgs/GetTeachingTrajectoryNamesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTeachingTrajectoryNames-response>)))
  "Returns md5sum for a message object of type '<GetTeachingTrajectoryNames-response>"
  "b78c8a970090dfff436e75670b29785b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTeachingTrajectoryNames-response)))
  "Returns md5sum for a message object of type 'GetTeachingTrajectoryNames-response"
  "b78c8a970090dfff436e75670b29785b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTeachingTrajectoryNames-response>)))
  "Returns full string definition for message of type '<GetTeachingTrajectoryNames-response>"
  (cl:format cl:nil "bool success~%string[] teachingTrajectoryNames~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTeachingTrajectoryNames-response)))
  "Returns full string definition for message of type 'GetTeachingTrajectoryNames-response"
  (cl:format cl:nil "bool success~%string[] teachingTrajectoryNames~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTeachingTrajectoryNames-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'teachingTrajectoryNames) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTeachingTrajectoryNames-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTeachingTrajectoryNames-response
    (cl:cons ':success (success msg))
    (cl:cons ':teachingTrajectoryNames (teachingTrajectoryNames msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTeachingTrajectoryNames)))
  'GetTeachingTrajectoryNames-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTeachingTrajectoryNames)))
  'GetTeachingTrajectoryNames-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTeachingTrajectoryNames)))
  "Returns string type for a service object of type '<GetTeachingTrajectoryNames>"
  "torobo_msgs/GetTeachingTrajectoryNames")