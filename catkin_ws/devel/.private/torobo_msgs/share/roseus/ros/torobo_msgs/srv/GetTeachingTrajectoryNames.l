;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::GetTeachingTrajectoryNames)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'GetTeachingTrajectoryNames (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::GETTEACHINGTRAJECTORYNAMES")
  (make-package "TOROBO_MSGS::GETTEACHINGTRAJECTORYNAMES"))
(unless (find-package "TOROBO_MSGS::GETTEACHINGTRAJECTORYNAMESREQUEST")
  (make-package "TOROBO_MSGS::GETTEACHINGTRAJECTORYNAMESREQUEST"))
(unless (find-package "TOROBO_MSGS::GETTEACHINGTRAJECTORYNAMESRESPONSE")
  (make-package "TOROBO_MSGS::GETTEACHINGTRAJECTORYNAMESRESPONSE"))

(in-package "ROS")





(defclass torobo_msgs::GetTeachingTrajectoryNamesRequest
  :super ros::object
  :slots ())

(defmethod torobo_msgs::GetTeachingTrajectoryNamesRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass torobo_msgs::GetTeachingTrajectoryNamesResponse
  :super ros::object
  :slots (_success _teachingTrajectoryNames ))

(defmethod torobo_msgs::GetTeachingTrajectoryNamesResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:teachingTrajectoryNames __teachingTrajectoryNames) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _success __success)
   (setq _teachingTrajectoryNames __teachingTrajectoryNames)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:teachingTrajectoryNames
   (&optional __teachingTrajectoryNames)
   (if __teachingTrajectoryNames (setq _teachingTrajectoryNames __teachingTrajectoryNames)) _teachingTrajectoryNames)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string[] _teachingTrajectoryNames
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _teachingTrajectoryNames)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string[] _teachingTrajectoryNames
     (write-long (length _teachingTrajectoryNames) s)
     (dolist (elem _teachingTrajectoryNames)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _teachingTrajectoryNames
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _teachingTrajectoryNames (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _teachingTrajectoryNames i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass torobo_msgs::GetTeachingTrajectoryNames
  :super ros::object
  :slots ())

(setf (get torobo_msgs::GetTeachingTrajectoryNames :md5sum-) "b78c8a970090dfff436e75670b29785b")
(setf (get torobo_msgs::GetTeachingTrajectoryNames :datatype-) "torobo_msgs/GetTeachingTrajectoryNames")
(setf (get torobo_msgs::GetTeachingTrajectoryNames :request) torobo_msgs::GetTeachingTrajectoryNamesRequest)
(setf (get torobo_msgs::GetTeachingTrajectoryNames :response) torobo_msgs::GetTeachingTrajectoryNamesResponse)

(defmethod torobo_msgs::GetTeachingTrajectoryNamesRequest
  (:response () (instance torobo_msgs::GetTeachingTrajectoryNamesResponse :init)))

(setf (get torobo_msgs::GetTeachingTrajectoryNamesRequest :md5sum-) "b78c8a970090dfff436e75670b29785b")
(setf (get torobo_msgs::GetTeachingTrajectoryNamesRequest :datatype-) "torobo_msgs/GetTeachingTrajectoryNamesRequest")
(setf (get torobo_msgs::GetTeachingTrajectoryNamesRequest :definition-)
      "---
bool success
string[] teachingTrajectoryNames
")

(setf (get torobo_msgs::GetTeachingTrajectoryNamesResponse :md5sum-) "b78c8a970090dfff436e75670b29785b")
(setf (get torobo_msgs::GetTeachingTrajectoryNamesResponse :datatype-) "torobo_msgs/GetTeachingTrajectoryNamesResponse")
(setf (get torobo_msgs::GetTeachingTrajectoryNamesResponse :definition-)
      "---
bool success
string[] teachingTrajectoryNames
")



(provide :torobo_msgs/GetTeachingTrajectoryNames "b78c8a970090dfff436e75670b29785b")


