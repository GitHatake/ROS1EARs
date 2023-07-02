;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::GetJointState)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'GetJointState (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::GETJOINTSTATE")
  (make-package "TOROBO_MSGS::GETJOINTSTATE"))
(unless (find-package "TOROBO_MSGS::GETJOINTSTATEREQUEST")
  (make-package "TOROBO_MSGS::GETJOINTSTATEREQUEST"))
(unless (find-package "TOROBO_MSGS::GETJOINTSTATERESPONSE")
  (make-package "TOROBO_MSGS::GETJOINTSTATERESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass torobo_msgs::GetJointStateRequest
  :super ros::object
  :slots ())

(defmethod torobo_msgs::GetJointStateRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass torobo_msgs::GetJointStateResponse
  :super ros::object
  :slots (_jointState ))

(defmethod torobo_msgs::GetJointStateResponse
  (:init
   (&key
    ((:jointState __jointState) (instance sensor_msgs::JointState :init))
    )
   (send-super :init)
   (setq _jointState __jointState)
   self)
  (:jointState
   (&rest __jointState)
   (if (keywordp (car __jointState))
       (send* _jointState __jointState)
     (progn
       (if __jointState (setq _jointState (car __jointState)))
       _jointState)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/JointState _jointState
    (send _jointState :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/JointState _jointState
       (send _jointState :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/JointState _jointState
     (send _jointState :deserialize buf ptr-) (incf ptr- (send _jointState :serialization-length))
   ;;
   self)
  )

(defclass torobo_msgs::GetJointState
  :super ros::object
  :slots ())

(setf (get torobo_msgs::GetJointState :md5sum-) "828d193d7c2252dd17a1fb6d7b1a79ef")
(setf (get torobo_msgs::GetJointState :datatype-) "torobo_msgs/GetJointState")
(setf (get torobo_msgs::GetJointState :request) torobo_msgs::GetJointStateRequest)
(setf (get torobo_msgs::GetJointState :response) torobo_msgs::GetJointStateResponse)

(defmethod torobo_msgs::GetJointStateRequest
  (:response () (instance torobo_msgs::GetJointStateResponse :init)))

(setf (get torobo_msgs::GetJointStateRequest :md5sum-) "828d193d7c2252dd17a1fb6d7b1a79ef")
(setf (get torobo_msgs::GetJointStateRequest :datatype-) "torobo_msgs/GetJointStateRequest")
(setf (get torobo_msgs::GetJointStateRequest :definition-)
      "---
sensor_msgs/JointState jointState

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")

(setf (get torobo_msgs::GetJointStateResponse :md5sum-) "828d193d7c2252dd17a1fb6d7b1a79ef")
(setf (get torobo_msgs::GetJointStateResponse :datatype-) "torobo_msgs/GetJointStateResponse")
(setf (get torobo_msgs::GetJointStateResponse :definition-)
      "---
sensor_msgs/JointState jointState

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")



(provide :torobo_msgs/GetJointState "828d193d7c2252dd17a1fb6d7b1a79ef")


