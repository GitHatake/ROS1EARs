;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::GetTeachingPoint)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'GetTeachingPoint (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::GETTEACHINGPOINT")
  (make-package "TOROBO_MSGS::GETTEACHINGPOINT"))
(unless (find-package "TOROBO_MSGS::GETTEACHINGPOINTREQUEST")
  (make-package "TOROBO_MSGS::GETTEACHINGPOINTREQUEST"))
(unless (find-package "TOROBO_MSGS::GETTEACHINGPOINTRESPONSE")
  (make-package "TOROBO_MSGS::GETTEACHINGPOINTRESPONSE"))

(in-package "ROS")



(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(defclass torobo_msgs::GetTeachingPointRequest
  :super ros::object
  :slots (_teachingPointName ))

(defmethod torobo_msgs::GetTeachingPointRequest
  (:init
   (&key
    ((:teachingPointName __teachingPointName) "")
    )
   (send-super :init)
   (setq _teachingPointName (string __teachingPointName))
   self)
  (:teachingPointName
   (&optional __teachingPointName)
   (if __teachingPointName (setq _teachingPointName __teachingPointName)) _teachingPointName)
  (:serialization-length
   ()
   (+
    ;; string _teachingPointName
    4 (length _teachingPointName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _teachingPointName
       (write-long (length _teachingPointName) s) (princ _teachingPointName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _teachingPointName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _teachingPointName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass torobo_msgs::GetTeachingPointResponse
  :super ros::object
  :slots (_success _point ))

(defmethod torobo_msgs::GetTeachingPointResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:point __point) (instance trajectory_msgs::JointTrajectoryPoint :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _point __point)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; trajectory_msgs/JointTrajectoryPoint _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; trajectory_msgs/JointTrajectoryPoint _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; trajectory_msgs/JointTrajectoryPoint _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(defclass torobo_msgs::GetTeachingPoint
  :super ros::object
  :slots ())

(setf (get torobo_msgs::GetTeachingPoint :md5sum-) "cd31ca534ee0b773cd76acbd40a6c640")
(setf (get torobo_msgs::GetTeachingPoint :datatype-) "torobo_msgs/GetTeachingPoint")
(setf (get torobo_msgs::GetTeachingPoint :request) torobo_msgs::GetTeachingPointRequest)
(setf (get torobo_msgs::GetTeachingPoint :response) torobo_msgs::GetTeachingPointResponse)

(defmethod torobo_msgs::GetTeachingPointRequest
  (:response () (instance torobo_msgs::GetTeachingPointResponse :init)))

(setf (get torobo_msgs::GetTeachingPointRequest :md5sum-) "cd31ca534ee0b773cd76acbd40a6c640")
(setf (get torobo_msgs::GetTeachingPointRequest :datatype-) "torobo_msgs/GetTeachingPointRequest")
(setf (get torobo_msgs::GetTeachingPointRequest :definition-)
      "string teachingPointName 
---
bool success
trajectory_msgs/JointTrajectoryPoint point

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

(setf (get torobo_msgs::GetTeachingPointResponse :md5sum-) "cd31ca534ee0b773cd76acbd40a6c640")
(setf (get torobo_msgs::GetTeachingPointResponse :datatype-) "torobo_msgs/GetTeachingPointResponse")
(setf (get torobo_msgs::GetTeachingPointResponse :definition-)
      "string teachingPointName 
---
bool success
trajectory_msgs/JointTrajectoryPoint point

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



(provide :torobo_msgs/GetTeachingPoint "cd31ca534ee0b773cd76acbd40a6c640")


