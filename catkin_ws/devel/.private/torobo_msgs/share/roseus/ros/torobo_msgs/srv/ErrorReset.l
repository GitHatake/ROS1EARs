;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::ErrorReset)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'ErrorReset (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::ERRORRESET")
  (make-package "TOROBO_MSGS::ERRORRESET"))
(unless (find-package "TOROBO_MSGS::ERRORRESETREQUEST")
  (make-package "TOROBO_MSGS::ERRORRESETREQUEST"))
(unless (find-package "TOROBO_MSGS::ERRORRESETRESPONSE")
  (make-package "TOROBO_MSGS::ERRORRESETRESPONSE"))

(in-package "ROS")





(defclass torobo_msgs::ErrorResetRequest
  :super ros::object
  :slots (_joint_names ))

(defmethod torobo_msgs::ErrorResetRequest
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

(defclass torobo_msgs::ErrorResetResponse
  :super ros::object
  :slots (_success ))

(defmethod torobo_msgs::ErrorResetResponse
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

(defclass torobo_msgs::ErrorReset
  :super ros::object
  :slots ())

(setf (get torobo_msgs::ErrorReset :md5sum-) "abb91c83ed030d595b2e5754d356a7f3")
(setf (get torobo_msgs::ErrorReset :datatype-) "torobo_msgs/ErrorReset")
(setf (get torobo_msgs::ErrorReset :request) torobo_msgs::ErrorResetRequest)
(setf (get torobo_msgs::ErrorReset :response) torobo_msgs::ErrorResetResponse)

(defmethod torobo_msgs::ErrorResetRequest
  (:response () (instance torobo_msgs::ErrorResetResponse :init)))

(setf (get torobo_msgs::ErrorResetRequest :md5sum-) "abb91c83ed030d595b2e5754d356a7f3")
(setf (get torobo_msgs::ErrorResetRequest :datatype-) "torobo_msgs/ErrorResetRequest")
(setf (get torobo_msgs::ErrorResetRequest :definition-)
      "string[] joint_names
---
bool success

")

(setf (get torobo_msgs::ErrorResetResponse :md5sum-) "abb91c83ed030d595b2e5754d356a7f3")
(setf (get torobo_msgs::ErrorResetResponse :datatype-) "torobo_msgs/ErrorResetResponse")
(setf (get torobo_msgs::ErrorResetResponse :definition-)
      "string[] joint_names
---
bool success

")



(provide :torobo_msgs/ErrorReset "abb91c83ed030d595b2e5754d356a7f3")


