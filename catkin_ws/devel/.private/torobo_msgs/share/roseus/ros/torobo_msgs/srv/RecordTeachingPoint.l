;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::RecordTeachingPoint)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'RecordTeachingPoint (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::RECORDTEACHINGPOINT")
  (make-package "TOROBO_MSGS::RECORDTEACHINGPOINT"))
(unless (find-package "TOROBO_MSGS::RECORDTEACHINGPOINTREQUEST")
  (make-package "TOROBO_MSGS::RECORDTEACHINGPOINTREQUEST"))
(unless (find-package "TOROBO_MSGS::RECORDTEACHINGPOINTRESPONSE")
  (make-package "TOROBO_MSGS::RECORDTEACHINGPOINTRESPONSE"))

(in-package "ROS")

(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))




(defclass torobo_msgs::RecordTeachingPointRequest
  :super ros::object
  :slots (_teachingPointName _point ))

(defmethod torobo_msgs::RecordTeachingPointRequest
  (:init
   (&key
    ((:teachingPointName __teachingPointName) "")
    ((:point __point) (instance trajectory_msgs::JointTrajectoryPoint :init))
    )
   (send-super :init)
   (setq _teachingPointName (string __teachingPointName))
   (setq _point __point)
   self)
  (:teachingPointName
   (&optional __teachingPointName)
   (if __teachingPointName (setq _teachingPointName __teachingPointName)) _teachingPointName)
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
    ;; string _teachingPointName
    4 (length _teachingPointName)
    ;; trajectory_msgs/JointTrajectoryPoint _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _teachingPointName
       (write-long (length _teachingPointName) s) (princ _teachingPointName s)
     ;; trajectory_msgs/JointTrajectoryPoint _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _teachingPointName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _teachingPointName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; trajectory_msgs/JointTrajectoryPoint _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(defclass torobo_msgs::RecordTeachingPointResponse
  :super ros::object
  :slots (_success ))

(defmethod torobo_msgs::RecordTeachingPointResponse
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

(defclass torobo_msgs::RecordTeachingPoint
  :super ros::object
  :slots ())

(setf (get torobo_msgs::RecordTeachingPoint :md5sum-) "da402d8c24b24843426eaf136284c37e")
(setf (get torobo_msgs::RecordTeachingPoint :datatype-) "torobo_msgs/RecordTeachingPoint")
(setf (get torobo_msgs::RecordTeachingPoint :request) torobo_msgs::RecordTeachingPointRequest)
(setf (get torobo_msgs::RecordTeachingPoint :response) torobo_msgs::RecordTeachingPointResponse)

(defmethod torobo_msgs::RecordTeachingPointRequest
  (:response () (instance torobo_msgs::RecordTeachingPointResponse :init)))

(setf (get torobo_msgs::RecordTeachingPointRequest :md5sum-) "da402d8c24b24843426eaf136284c37e")
(setf (get torobo_msgs::RecordTeachingPointRequest :datatype-) "torobo_msgs/RecordTeachingPointRequest")
(setf (get torobo_msgs::RecordTeachingPointRequest :definition-)
      "string teachingPointName
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
---
bool success
")

(setf (get torobo_msgs::RecordTeachingPointResponse :md5sum-) "da402d8c24b24843426eaf136284c37e")
(setf (get torobo_msgs::RecordTeachingPointResponse :datatype-) "torobo_msgs/RecordTeachingPointResponse")
(setf (get torobo_msgs::RecordTeachingPointResponse :definition-)
      "string teachingPointName
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
---
bool success
")



(provide :torobo_msgs/RecordTeachingPoint "da402d8c24b24843426eaf136284c37e")


