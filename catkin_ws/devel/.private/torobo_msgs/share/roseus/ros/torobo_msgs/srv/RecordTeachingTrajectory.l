;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::RecordTeachingTrajectory)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'RecordTeachingTrajectory (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::RECORDTEACHINGTRAJECTORY")
  (make-package "TOROBO_MSGS::RECORDTEACHINGTRAJECTORY"))
(unless (find-package "TOROBO_MSGS::RECORDTEACHINGTRAJECTORYREQUEST")
  (make-package "TOROBO_MSGS::RECORDTEACHINGTRAJECTORYREQUEST"))
(unless (find-package "TOROBO_MSGS::RECORDTEACHINGTRAJECTORYRESPONSE")
  (make-package "TOROBO_MSGS::RECORDTEACHINGTRAJECTORYRESPONSE"))

(in-package "ROS")

(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))




(defclass torobo_msgs::RecordTeachingTrajectoryRequest
  :super ros::object
  :slots (_teachingTrajectoryName _trajectory ))

(defmethod torobo_msgs::RecordTeachingTrajectoryRequest
  (:init
   (&key
    ((:teachingTrajectoryName __teachingTrajectoryName) "")
    ((:trajectory __trajectory) (instance trajectory_msgs::JointTrajectory :init))
    )
   (send-super :init)
   (setq _teachingTrajectoryName (string __teachingTrajectoryName))
   (setq _trajectory __trajectory)
   self)
  (:teachingTrajectoryName
   (&optional __teachingTrajectoryName)
   (if __teachingTrajectoryName (setq _teachingTrajectoryName __teachingTrajectoryName)) _teachingTrajectoryName)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:serialization-length
   ()
   (+
    ;; string _teachingTrajectoryName
    4 (length _teachingTrajectoryName)
    ;; trajectory_msgs/JointTrajectory _trajectory
    (send _trajectory :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _teachingTrajectoryName
       (write-long (length _teachingTrajectoryName) s) (princ _teachingTrajectoryName s)
     ;; trajectory_msgs/JointTrajectory _trajectory
       (send _trajectory :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _teachingTrajectoryName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _teachingTrajectoryName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; trajectory_msgs/JointTrajectory _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;;
   self)
  )

(defclass torobo_msgs::RecordTeachingTrajectoryResponse
  :super ros::object
  :slots (_success ))

(defmethod torobo_msgs::RecordTeachingTrajectoryResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass torobo_msgs::RecordTeachingTrajectory
  :super ros::object
  :slots ())

(setf (get torobo_msgs::RecordTeachingTrajectory :md5sum-) "c669b47b2c67251a736ac9c2f832189a")
(setf (get torobo_msgs::RecordTeachingTrajectory :datatype-) "torobo_msgs/RecordTeachingTrajectory")
(setf (get torobo_msgs::RecordTeachingTrajectory :request) torobo_msgs::RecordTeachingTrajectoryRequest)
(setf (get torobo_msgs::RecordTeachingTrajectory :response) torobo_msgs::RecordTeachingTrajectoryResponse)

(defmethod torobo_msgs::RecordTeachingTrajectoryRequest
  (:response () (instance torobo_msgs::RecordTeachingTrajectoryResponse :init)))

(setf (get torobo_msgs::RecordTeachingTrajectoryRequest :md5sum-) "c669b47b2c67251a736ac9c2f832189a")
(setf (get torobo_msgs::RecordTeachingTrajectoryRequest :datatype-) "torobo_msgs/RecordTeachingTrajectoryRequest")
(setf (get torobo_msgs::RecordTeachingTrajectoryRequest :definition-)
      "string teachingTrajectoryName
trajectory_msgs/JointTrajectory trajectory

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points
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
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
---
bool success
")

(setf (get torobo_msgs::RecordTeachingTrajectoryResponse :md5sum-) "c669b47b2c67251a736ac9c2f832189a")
(setf (get torobo_msgs::RecordTeachingTrajectoryResponse :datatype-) "torobo_msgs/RecordTeachingTrajectoryResponse")
(setf (get torobo_msgs::RecordTeachingTrajectoryResponse :definition-)
      "string teachingTrajectoryName
trajectory_msgs/JointTrajectory trajectory

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points
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
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
---
bool success
")



(provide :torobo_msgs/RecordTeachingTrajectory "c669b47b2c67251a736ac9c2f832189a")


