;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::GetTeachingPointNames)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'GetTeachingPointNames (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::GETTEACHINGPOINTNAMES")
  (make-package "TOROBO_MSGS::GETTEACHINGPOINTNAMES"))
(unless (find-package "TOROBO_MSGS::GETTEACHINGPOINTNAMESREQUEST")
  (make-package "TOROBO_MSGS::GETTEACHINGPOINTNAMESREQUEST"))
(unless (find-package "TOROBO_MSGS::GETTEACHINGPOINTNAMESRESPONSE")
  (make-package "TOROBO_MSGS::GETTEACHINGPOINTNAMESRESPONSE"))

(in-package "ROS")





(defclass torobo_msgs::GetTeachingPointNamesRequest
  :super ros::object
  :slots ())

(defmethod torobo_msgs::GetTeachingPointNamesRequest
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

(defclass torobo_msgs::GetTeachingPointNamesResponse
  :super ros::object
  :slots (_success _teachingPointNames ))

(defmethod torobo_msgs::GetTeachingPointNamesResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:teachingPointNames __teachingPointNames) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _success __success)
   (setq _teachingPointNames __teachingPointNames)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:teachingPointNames
   (&optional __teachingPointNames)
   (if __teachingPointNames (setq _teachingPointNames __teachingPointNames)) _teachingPointNames)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string[] _teachingPointNames
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _teachingPointNames)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string[] _teachingPointNames
     (write-long (length _teachingPointNames) s)
     (dolist (elem _teachingPointNames)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _teachingPointNames
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _teachingPointNames (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _teachingPointNames i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass torobo_msgs::GetTeachingPointNames
  :super ros::object
  :slots ())

(setf (get torobo_msgs::GetTeachingPointNames :md5sum-) "86750bf3b770c5fb06c0dead2089ecbf")
(setf (get torobo_msgs::GetTeachingPointNames :datatype-) "torobo_msgs/GetTeachingPointNames")
(setf (get torobo_msgs::GetTeachingPointNames :request) torobo_msgs::GetTeachingPointNamesRequest)
(setf (get torobo_msgs::GetTeachingPointNames :response) torobo_msgs::GetTeachingPointNamesResponse)

(defmethod torobo_msgs::GetTeachingPointNamesRequest
  (:response () (instance torobo_msgs::GetTeachingPointNamesResponse :init)))

(setf (get torobo_msgs::GetTeachingPointNamesRequest :md5sum-) "86750bf3b770c5fb06c0dead2089ecbf")
(setf (get torobo_msgs::GetTeachingPointNamesRequest :datatype-) "torobo_msgs/GetTeachingPointNamesRequest")
(setf (get torobo_msgs::GetTeachingPointNamesRequest :definition-)
      "---
bool success
string[] teachingPointNames
")

(setf (get torobo_msgs::GetTeachingPointNamesResponse :md5sum-) "86750bf3b770c5fb06c0dead2089ecbf")
(setf (get torobo_msgs::GetTeachingPointNamesResponse :datatype-) "torobo_msgs/GetTeachingPointNamesResponse")
(setf (get torobo_msgs::GetTeachingPointNamesResponse :definition-)
      "---
bool success
string[] teachingPointNames
")



(provide :torobo_msgs/GetTeachingPointNames "86750bf3b770c5fb06c0dead2089ecbf")


