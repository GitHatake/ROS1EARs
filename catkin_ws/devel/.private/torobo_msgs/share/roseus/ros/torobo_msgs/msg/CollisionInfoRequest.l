;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::CollisionInfoRequest)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'CollisionInfoRequest (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::COLLISIONINFOREQUEST")
  (make-package "TOROBO_MSGS::COLLISIONINFOREQUEST"))

(in-package "ROS")
;;//! \htmlinclude CollisionInfoRequest.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass torobo_msgs::CollisionInfoRequest
  :super ros::object
  :slots (_jointState _max_contacts ))

(defmethod torobo_msgs::CollisionInfoRequest
  (:init
   (&key
    ((:jointState __jointState) (instance sensor_msgs::JointState :init))
    ((:max_contacts __max_contacts) 0)
    )
   (send-super :init)
   (setq _jointState __jointState)
   (setq _max_contacts (round __max_contacts))
   self)
  (:jointState
   (&rest __jointState)
   (if (keywordp (car __jointState))
       (send* _jointState __jointState)
     (progn
       (if __jointState (setq _jointState (car __jointState)))
       _jointState)))
  (:max_contacts
   (&optional __max_contacts)
   (if __max_contacts (setq _max_contacts __max_contacts)) _max_contacts)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/JointState _jointState
    (send _jointState :serialization-length)
    ;; uint32 _max_contacts
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/JointState _jointState
       (send _jointState :serialize s)
     ;; uint32 _max_contacts
       (write-long _max_contacts s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/JointState _jointState
     (send _jointState :deserialize buf ptr-) (incf ptr- (send _jointState :serialization-length))
   ;; uint32 _max_contacts
     (setq _max_contacts (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get torobo_msgs::CollisionInfoRequest :md5sum-) "011912b45619601da9981598cea2b9a3")
(setf (get torobo_msgs::CollisionInfoRequest :datatype-) "torobo_msgs/CollisionInfoRequest")
(setf (get torobo_msgs::CollisionInfoRequest :definition-)
      "sensor_msgs/JointState jointState
uint32 max_contacts

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



(provide :torobo_msgs/CollisionInfoRequest "011912b45619601da9981598cea2b9a3")


