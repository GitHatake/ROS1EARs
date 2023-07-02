;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::GetCollisionInfo)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'GetCollisionInfo (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::GETCOLLISIONINFO")
  (make-package "TOROBO_MSGS::GETCOLLISIONINFO"))
(unless (find-package "TOROBO_MSGS::GETCOLLISIONINFOREQUEST")
  (make-package "TOROBO_MSGS::GETCOLLISIONINFOREQUEST"))
(unless (find-package "TOROBO_MSGS::GETCOLLISIONINFORESPONSE")
  (make-package "TOROBO_MSGS::GETCOLLISIONINFORESPONSE"))

(in-package "ROS")





(defclass torobo_msgs::GetCollisionInfoRequest
  :super ros::object
  :slots (_collision_info_request ))

(defmethod torobo_msgs::GetCollisionInfoRequest
  (:init
   (&key
    ((:collision_info_request __collision_info_request) (instance torobo_msgs::CollisionInfoRequest :init))
    )
   (send-super :init)
   (setq _collision_info_request __collision_info_request)
   self)
  (:collision_info_request
   (&rest __collision_info_request)
   (if (keywordp (car __collision_info_request))
       (send* _collision_info_request __collision_info_request)
     (progn
       (if __collision_info_request (setq _collision_info_request (car __collision_info_request)))
       _collision_info_request)))
  (:serialization-length
   ()
   (+
    ;; torobo_msgs/CollisionInfoRequest _collision_info_request
    (send _collision_info_request :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; torobo_msgs/CollisionInfoRequest _collision_info_request
       (send _collision_info_request :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; torobo_msgs/CollisionInfoRequest _collision_info_request
     (send _collision_info_request :deserialize buf ptr-) (incf ptr- (send _collision_info_request :serialization-length))
   ;;
   self)
  )

(defclass torobo_msgs::GetCollisionInfoResponse
  :super ros::object
  :slots (_collision_info_response ))

(defmethod torobo_msgs::GetCollisionInfoResponse
  (:init
   (&key
    ((:collision_info_response __collision_info_response) (instance torobo_msgs::CollisionInfoResponse :init))
    )
   (send-super :init)
   (setq _collision_info_response __collision_info_response)
   self)
  (:collision_info_response
   (&rest __collision_info_response)
   (if (keywordp (car __collision_info_response))
       (send* _collision_info_response __collision_info_response)
     (progn
       (if __collision_info_response (setq _collision_info_response (car __collision_info_response)))
       _collision_info_response)))
  (:serialization-length
   ()
   (+
    ;; torobo_msgs/CollisionInfoResponse _collision_info_response
    (send _collision_info_response :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; torobo_msgs/CollisionInfoResponse _collision_info_response
       (send _collision_info_response :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; torobo_msgs/CollisionInfoResponse _collision_info_response
     (send _collision_info_response :deserialize buf ptr-) (incf ptr- (send _collision_info_response :serialization-length))
   ;;
   self)
  )

(defclass torobo_msgs::GetCollisionInfo
  :super ros::object
  :slots ())

(setf (get torobo_msgs::GetCollisionInfo :md5sum-) "f0626346887ec50a585aed5a146d00dc")
(setf (get torobo_msgs::GetCollisionInfo :datatype-) "torobo_msgs/GetCollisionInfo")
(setf (get torobo_msgs::GetCollisionInfo :request) torobo_msgs::GetCollisionInfoRequest)
(setf (get torobo_msgs::GetCollisionInfo :response) torobo_msgs::GetCollisionInfoResponse)

(defmethod torobo_msgs::GetCollisionInfoRequest
  (:response () (instance torobo_msgs::GetCollisionInfoResponse :init)))

(setf (get torobo_msgs::GetCollisionInfoRequest :md5sum-) "f0626346887ec50a585aed5a146d00dc")
(setf (get torobo_msgs::GetCollisionInfoRequest :datatype-) "torobo_msgs/GetCollisionInfoRequest")
(setf (get torobo_msgs::GetCollisionInfoRequest :definition-)
      "CollisionInfoRequest collision_info_request

================================================================================
MSG: torobo_msgs/CollisionInfoRequest
sensor_msgs/JointState jointState
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
---
CollisionInfoResponse collision_info_response


================================================================================
MSG: torobo_msgs/CollisionInfoResponse
bool isColliding
moveit_msgs/ContactInformation[] contacts

================================================================================
MSG: moveit_msgs/ContactInformation
# Standard ROS header contains information 
# about the frame in which this 
# contact is specified
Header header

# Position of the contact point
geometry_msgs/Point position

# Normal corresponding to the contact point
geometry_msgs/Vector3 normal 

# Depth of contact point
float64 depth

# Name of the first body that is in contact
# This could be a link or a namespace that represents a body
string contact_body_1
uint32 body_type_1

# Name of the second body that is in contact
# This could be a link or a namespace that represents a body
string contact_body_2
uint32 body_type_2

uint32 ROBOT_LINK=0
uint32 WORLD_OBJECT=1
uint32 ROBOT_ATTACHED=2

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

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")

(setf (get torobo_msgs::GetCollisionInfoResponse :md5sum-) "f0626346887ec50a585aed5a146d00dc")
(setf (get torobo_msgs::GetCollisionInfoResponse :datatype-) "torobo_msgs/GetCollisionInfoResponse")
(setf (get torobo_msgs::GetCollisionInfoResponse :definition-)
      "CollisionInfoRequest collision_info_request

================================================================================
MSG: torobo_msgs/CollisionInfoRequest
sensor_msgs/JointState jointState
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
---
CollisionInfoResponse collision_info_response


================================================================================
MSG: torobo_msgs/CollisionInfoResponse
bool isColliding
moveit_msgs/ContactInformation[] contacts

================================================================================
MSG: moveit_msgs/ContactInformation
# Standard ROS header contains information 
# about the frame in which this 
# contact is specified
Header header

# Position of the contact point
geometry_msgs/Point position

# Normal corresponding to the contact point
geometry_msgs/Vector3 normal 

# Depth of contact point
float64 depth

# Name of the first body that is in contact
# This could be a link or a namespace that represents a body
string contact_body_1
uint32 body_type_1

# Name of the second body that is in contact
# This could be a link or a namespace that represents a body
string contact_body_2
uint32 body_type_2

uint32 ROBOT_LINK=0
uint32 WORLD_OBJECT=1
uint32 ROBOT_ATTACHED=2

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

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")



(provide :torobo_msgs/GetCollisionInfo "f0626346887ec50a585aed5a146d00dc")


