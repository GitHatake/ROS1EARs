;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::CollisionInfoResponse)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'CollisionInfoResponse (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::COLLISIONINFORESPONSE")
  (make-package "TOROBO_MSGS::COLLISIONINFORESPONSE"))

(in-package "ROS")
;;//! \htmlinclude CollisionInfoResponse.msg.html
(if (not (find-package "MOVEIT_MSGS"))
  (ros::roseus-add-msgs "moveit_msgs"))


(defclass torobo_msgs::CollisionInfoResponse
  :super ros::object
  :slots (_isColliding _contacts ))

(defmethod torobo_msgs::CollisionInfoResponse
  (:init
   (&key
    ((:isColliding __isColliding) nil)
    ((:contacts __contacts) (let (r) (dotimes (i 0) (push (instance moveit_msgs::ContactInformation :init) r)) r))
    )
   (send-super :init)
   (setq _isColliding __isColliding)
   (setq _contacts __contacts)
   self)
  (:isColliding
   (&optional __isColliding)
   (if __isColliding (setq _isColliding __isColliding)) _isColliding)
  (:contacts
   (&rest __contacts)
   (if (keywordp (car __contacts))
       (send* _contacts __contacts)
     (progn
       (if __contacts (setq _contacts (car __contacts)))
       _contacts)))
  (:serialization-length
   ()
   (+
    ;; bool _isColliding
    1
    ;; moveit_msgs/ContactInformation[] _contacts
    (apply #'+ (send-all _contacts :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isColliding
       (if _isColliding (write-byte -1 s) (write-byte 0 s))
     ;; moveit_msgs/ContactInformation[] _contacts
     (write-long (length _contacts) s)
     (dolist (elem _contacts)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isColliding
     (setq _isColliding (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; moveit_msgs/ContactInformation[] _contacts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contacts (let (r) (dotimes (i n) (push (instance moveit_msgs::ContactInformation :init) r)) r))
     (dolist (elem- _contacts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get torobo_msgs::CollisionInfoResponse :md5sum-) "a47c47e56d53de2ea05d46b23329bd86")
(setf (get torobo_msgs::CollisionInfoResponse :datatype-) "torobo_msgs/CollisionInfoResponse")
(setf (get torobo_msgs::CollisionInfoResponse :definition-)
      "bool isColliding
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
float64 z
")



(provide :torobo_msgs/CollisionInfoResponse "a47c47e56d53de2ea05d46b23329bd86")


