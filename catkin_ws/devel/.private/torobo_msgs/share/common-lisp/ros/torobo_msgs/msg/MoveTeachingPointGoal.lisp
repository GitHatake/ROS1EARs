; Auto-generated. Do not edit!


(cl:in-package torobo_msgs-msg)


;//! \htmlinclude MoveTeachingPointGoal.msg.html

(cl:defclass <MoveTeachingPointGoal> (roslisp-msg-protocol:ros-message)
  ((teachingPointName
    :reader teachingPointName
    :initarg :teachingPointName
    :type cl:string
    :initform "")
   (transitionTime
    :reader transitionTime
    :initarg :transitionTime
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveTeachingPointGoal (<MoveTeachingPointGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveTeachingPointGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveTeachingPointGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name torobo_msgs-msg:<MoveTeachingPointGoal> is deprecated: use torobo_msgs-msg:MoveTeachingPointGoal instead.")))

(cl:ensure-generic-function 'teachingPointName-val :lambda-list '(m))
(cl:defmethod teachingPointName-val ((m <MoveTeachingPointGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-msg:teachingPointName-val is deprecated.  Use torobo_msgs-msg:teachingPointName instead.")
  (teachingPointName m))

(cl:ensure-generic-function 'transitionTime-val :lambda-list '(m))
(cl:defmethod transitionTime-val ((m <MoveTeachingPointGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader torobo_msgs-msg:transitionTime-val is deprecated.  Use torobo_msgs-msg:transitionTime instead.")
  (transitionTime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveTeachingPointGoal>) ostream)
  "Serializes a message object of type '<MoveTeachingPointGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'teachingPointName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'teachingPointName))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'transitionTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveTeachingPointGoal>) istream)
  "Deserializes a message object of type '<MoveTeachingPointGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'teachingPointName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'teachingPointName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'transitionTime) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveTeachingPointGoal>)))
  "Returns string type for a message object of type '<MoveTeachingPointGoal>"
  "torobo_msgs/MoveTeachingPointGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveTeachingPointGoal)))
  "Returns string type for a message object of type 'MoveTeachingPointGoal"
  "torobo_msgs/MoveTeachingPointGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveTeachingPointGoal>)))
  "Returns md5sum for a message object of type '<MoveTeachingPointGoal>"
  "89a7bfc02970fbbaf04fb4fe151a93b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveTeachingPointGoal)))
  "Returns md5sum for a message object of type 'MoveTeachingPointGoal"
  "89a7bfc02970fbbaf04fb4fe151a93b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveTeachingPointGoal>)))
  "Returns full string definition for message of type '<MoveTeachingPointGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%string teachingPointName~%float64 transitionTime~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveTeachingPointGoal)))
  "Returns full string definition for message of type 'MoveTeachingPointGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%string teachingPointName~%float64 transitionTime~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveTeachingPointGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'teachingPointName))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveTeachingPointGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveTeachingPointGoal
    (cl:cons ':teachingPointName (teachingPointName msg))
    (cl:cons ':transitionTime (transitionTime msg))
))
