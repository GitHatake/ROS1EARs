;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::CheckCollision)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'CheckCollision (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::CHECKCOLLISION")
  (make-package "TOROBO_MSGS::CHECKCOLLISION"))
(unless (find-package "TOROBO_MSGS::CHECKCOLLISIONREQUEST")
  (make-package "TOROBO_MSGS::CHECKCOLLISIONREQUEST"))
(unless (find-package "TOROBO_MSGS::CHECKCOLLISIONRESPONSE")
  (make-package "TOROBO_MSGS::CHECKCOLLISIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass torobo_msgs::CheckCollisionRequest
  :super ros::object
  :slots (_jointState ))

(defmethod torobo_msgs::CheckCollisionRequest
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

(defclass torobo_msgs::CheckCollisionResponse
  :super ros::object
  :slots (_isColliding ))

(defmethod torobo_msgs::CheckCollisionResponse
  (:init
   (&key
    ((:isColliding __isColliding) nil)
    )
   (send-super :init)
   (setq _isColliding __isColliding)
   self)
  (:isColliding
   (&optional __isColliding)
   (if __isColliding (setq _isColliding __isColliding)) _isColliding)
  (:serialization-length
   ()
   (+
    ;; bool _isColliding
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isColliding
       (if _isColliding (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isColliding
     (setq _isColliding (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass torobo_msgs::CheckCollision
  :super ros::object
  :slots ())

(setf (get torobo_msgs::CheckCollision :md5sum-) "7f331446f35a1a09fd73f183dd0a3fe8")
(setf (get torobo_msgs::CheckCollision :datatype-) "torobo_msgs/CheckCollision")
(setf (get torobo_msgs::CheckCollision :request) torobo_msgs::CheckCollisionRequest)
(setf (get torobo_msgs::CheckCollision :response) torobo_msgs::CheckCollisionResponse)

(defmethod torobo_msgs::CheckCollisionRequest
  (:response () (instance torobo_msgs::CheckCollisionResponse :init)))

(setf (get torobo_msgs::CheckCollisionRequest :md5sum-) "7f331446f35a1a09fd73f183dd0a3fe8")
(setf (get torobo_msgs::CheckCollisionRequest :datatype-) "torobo_msgs/CheckCollisionRequest")
(setf (get torobo_msgs::CheckCollisionRequest :definition-)
      "sensor_msgs/JointState jointState

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
---
bool isColliding

")

(setf (get torobo_msgs::CheckCollisionResponse :md5sum-) "7f331446f35a1a09fd73f183dd0a3fe8")
(setf (get torobo_msgs::CheckCollisionResponse :datatype-) "torobo_msgs/CheckCollisionResponse")
(setf (get torobo_msgs::CheckCollisionResponse :definition-)
      "sensor_msgs/JointState jointState

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
---
bool isColliding

")



(provide :torobo_msgs/CheckCollision "7f331446f35a1a09fd73f183dd0a3fe8")


