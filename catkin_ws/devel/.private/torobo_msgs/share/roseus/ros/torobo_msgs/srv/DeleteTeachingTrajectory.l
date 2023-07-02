;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::DeleteTeachingTrajectory)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'DeleteTeachingTrajectory (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::DELETETEACHINGTRAJECTORY")
  (make-package "TOROBO_MSGS::DELETETEACHINGTRAJECTORY"))
(unless (find-package "TOROBO_MSGS::DELETETEACHINGTRAJECTORYREQUEST")
  (make-package "TOROBO_MSGS::DELETETEACHINGTRAJECTORYREQUEST"))
(unless (find-package "TOROBO_MSGS::DELETETEACHINGTRAJECTORYRESPONSE")
  (make-package "TOROBO_MSGS::DELETETEACHINGTRAJECTORYRESPONSE"))

(in-package "ROS")





(defclass torobo_msgs::DeleteTeachingTrajectoryRequest
  :super ros::object
  :slots (_teachingTrajectoryName ))

(defmethod torobo_msgs::DeleteTeachingTrajectoryRequest
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

(defclass torobo_msgs::DeleteTeachingTrajectoryResponse
  :super ros::object
  :slots (_success ))

(defmethod torobo_msgs::DeleteTeachingTrajectoryResponse
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

(defclass torobo_msgs::DeleteTeachingTrajectory
  :super ros::object
  :slots ())

(setf (get torobo_msgs::DeleteTeachingTrajectory :md5sum-) "562d1a1ce249e5404efbe936d40d377a")
(setf (get torobo_msgs::DeleteTeachingTrajectory :datatype-) "torobo_msgs/DeleteTeachingTrajectory")
(setf (get torobo_msgs::DeleteTeachingTrajectory :request) torobo_msgs::DeleteTeachingTrajectoryRequest)
(setf (get torobo_msgs::DeleteTeachingTrajectory :response) torobo_msgs::DeleteTeachingTrajectoryResponse)

(defmethod torobo_msgs::DeleteTeachingTrajectoryRequest
  (:response () (instance torobo_msgs::DeleteTeachingTrajectoryResponse :init)))

(setf (get torobo_msgs::DeleteTeachingTrajectoryRequest :md5sum-) "562d1a1ce249e5404efbe936d40d377a")
(setf (get torobo_msgs::DeleteTeachingTrajectoryRequest :datatype-) "torobo_msgs/DeleteTeachingTrajectoryRequest")
(setf (get torobo_msgs::DeleteTeachingTrajectoryRequest :definition-)
      "string teachingTrajectoryName 
---
bool success
")

(setf (get torobo_msgs::DeleteTeachingTrajectoryResponse :md5sum-) "562d1a1ce249e5404efbe936d40d377a")
(setf (get torobo_msgs::DeleteTeachingTrajectoryResponse :datatype-) "torobo_msgs/DeleteTeachingTrajectoryResponse")
(setf (get torobo_msgs::DeleteTeachingTrajectoryResponse :definition-)
      "string teachingTrajectoryName 
---
bool success
")



(provide :torobo_msgs/DeleteTeachingTrajectory "562d1a1ce249e5404efbe936d40d377a")


