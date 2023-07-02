;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::GetTeachingTrajectory)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'GetTeachingTrajectory (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::GETTEACHINGTRAJECTORY")
  (make-package "TOROBO_MSGS::GETTEACHINGTRAJECTORY"))
(unless (find-package "TOROBO_MSGS::GETTEACHINGTRAJECTORYREQUEST")
  (make-package "TOROBO_MSGS::GETTEACHINGTRAJECTORYREQUEST"))
(unless (find-package "TOROBO_MSGS::GETTEACHINGTRAJECTORYRESPONSE")
  (make-package "TOROBO_MSGS::GETTEACHINGTRAJECTORYRESPONSE"))

(in-package "ROS")



(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(defclass torobo_msgs::GetTeachingTrajectoryRequest
  :super ros::object
  :slots (_teachingTrajectoryName ))

(defmethod torobo_msgs::GetTeachingTrajectoryRequest
  (:init
   (&key
    ((:teachingTrajectoryName __teachingTrajectoryName) "")
    )
   (send-super :init)
   (setq _teachingTrajectoryName (string __teachingTrajectoryName))
   self)
  (:teachingTrajectoryName
   (&optional __teachingTrajectoryName)
   (if __teachingTrajectoryName (setq _teachingTrajectoryName __teachingTrajectoryName)) _teachingTrajectoryName)
  (:serialization-length
   ()
   (+
    ;; string _teachingTrajectoryName
    4 (length _teachingTrajectoryName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _teachingTrajectoryName
       (write-long (length _teachingTrajectoryName) s) (princ _teachingTrajectoryName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _teachingTrajectoryName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _teachingTrajectoryName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass torobo_msgs::GetTeachingTrajectoryResponse
  :super ros::object
  :slots (_success _trajectory ))

(defmethod torobo_msgs::GetTeachingTrajectoryResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:trajectory __trajectory) (instance trajectory_msgs::JointTrajectory :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _trajectory __trajectory)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
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
    ;; bool _success
    1
    ;; trajectory_msgs/JointTrajectory _trajectory
    (send _trajectory :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; trajectory_msgs/JointTrajectory _trajectory
       (send _trajectory :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; trajectory_msgs/JointTrajectory _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;;
   self)
  )

(defclass torobo_msgs::GetTeachingTrajectory
  :super ros::object
  :slots ())

(setf (get torobo_msgs::GetTeachingTrajectory :md5sum-) "af3a19966e89354595e93e28bbdd4162")
(setf (get torobo_msgs::GetTeachingTrajectory :datatype-) "torobo_msgs/GetTeachingTrajectory")
(setf (get torobo_msgs::GetTeachingTrajectory :request) torobo_msgs::GetTeachingTrajectoryRequest)
(setf (get torobo_msgs::GetTeachingTrajectory :response) torobo_msgs::GetTeachingTrajectoryResponse)

(defmethod torobo_msgs::GetTeachingTrajectoryRequest
  (:response () (instance torobo_msgs::GetTeachingTrajectoryResponse :init)))

(setf (get torobo_msgs::GetTeachingTrajectoryRequest :md5sum-) "af3a19966e89354595e93e28bbdd4162")
(setf (get torobo_msgs::GetTeachingTrajectoryRequest :datatype-) "torobo_msgs/GetTeachingTrajectoryRequest")
(setf (get torobo_msgs::GetTeachingTrajectoryRequest :definition-)
      "string teachingTrajectoryName 
---
bool success
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
")

(setf (get torobo_msgs::GetTeachingTrajectoryResponse :md5sum-) "af3a19966e89354595e93e28bbdd4162")
(setf (get torobo_msgs::GetTeachingTrajectoryResponse :datatype-) "torobo_msgs/GetTeachingTrajectoryResponse")
(setf (get torobo_msgs::GetTeachingTrajectoryResponse :definition-)
      "string teachingTrajectoryName 
---
bool success
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
")



(provide :torobo_msgs/GetTeachingTrajectory "af3a19966e89354595e93e28bbdd4162")


