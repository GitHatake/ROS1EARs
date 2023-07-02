;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::CancelTrajectory)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'CancelTrajectory (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::CANCELTRAJECTORY")
  (make-package "TOROBO_MSGS::CANCELTRAJECTORY"))
(unless (find-package "TOROBO_MSGS::CANCELTRAJECTORYREQUEST")
  (make-package "TOROBO_MSGS::CANCELTRAJECTORYREQUEST"))
(unless (find-package "TOROBO_MSGS::CANCELTRAJECTORYRESPONSE")
  (make-package "TOROBO_MSGS::CANCELTRAJECTORYRESPONSE"))

(in-package "ROS")





(defclass torobo_msgs::CancelTrajectoryRequest
  :super ros::object
  :slots (_joint_names ))

(defmethod torobo_msgs::CancelTrajectoryRequest
  (:init
   (&key
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _joint_names __joint_names)
   self)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:serialization-length
   ()
   (+
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass torobo_msgs::CancelTrajectoryResponse
  :super ros::object
  :slots (_success ))

(defmethod torobo_msgs::CancelTrajectoryResponse
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

(defclass torobo_msgs::CancelTrajectory
  :super ros::object
  :slots ())

(setf (get torobo_msgs::CancelTrajectory :md5sum-) "abb91c83ed030d595b2e5754d356a7f3")
(setf (get torobo_msgs::CancelTrajectory :datatype-) "torobo_msgs/CancelTrajectory")
(setf (get torobo_msgs::CancelTrajectory :request) torobo_msgs::CancelTrajectoryRequest)
(setf (get torobo_msgs::CancelTrajectory :response) torobo_msgs::CancelTrajectoryResponse)

(defmethod torobo_msgs::CancelTrajectoryRequest
  (:response () (instance torobo_msgs::CancelTrajectoryResponse :init)))

(setf (get torobo_msgs::CancelTrajectoryRequest :md5sum-) "abb91c83ed030d595b2e5754d356a7f3")
(setf (get torobo_msgs::CancelTrajectoryRequest :datatype-) "torobo_msgs/CancelTrajectoryRequest")
(setf (get torobo_msgs::CancelTrajectoryRequest :definition-)
      "string[] joint_names
---
bool success

")

(setf (get torobo_msgs::CancelTrajectoryResponse :md5sum-) "abb91c83ed030d595b2e5754d356a7f3")
(setf (get torobo_msgs::CancelTrajectoryResponse :datatype-) "torobo_msgs/CancelTrajectoryResponse")
(setf (get torobo_msgs::CancelTrajectoryResponse :definition-)
      "string[] joint_names
---
bool success

")



(provide :torobo_msgs/CancelTrajectory "abb91c83ed030d595b2e5754d356a7f3")


