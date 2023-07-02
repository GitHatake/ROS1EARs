;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::DeleteTeachingPoint)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'DeleteTeachingPoint (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::DELETETEACHINGPOINT")
  (make-package "TOROBO_MSGS::DELETETEACHINGPOINT"))
(unless (find-package "TOROBO_MSGS::DELETETEACHINGPOINTREQUEST")
  (make-package "TOROBO_MSGS::DELETETEACHINGPOINTREQUEST"))
(unless (find-package "TOROBO_MSGS::DELETETEACHINGPOINTRESPONSE")
  (make-package "TOROBO_MSGS::DELETETEACHINGPOINTRESPONSE"))

(in-package "ROS")





(defclass torobo_msgs::DeleteTeachingPointRequest
  :super ros::object
  :slots (_teachingPointName ))

(defmethod torobo_msgs::DeleteTeachingPointRequest
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

(defclass torobo_msgs::DeleteTeachingPointResponse
  :super ros::object
  :slots (_success ))

(defmethod torobo_msgs::DeleteTeachingPointResponse
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

(defclass torobo_msgs::DeleteTeachingPoint
  :super ros::object
  :slots ())

(setf (get torobo_msgs::DeleteTeachingPoint :md5sum-) "a2c869ed0a6122eb036ee623c16fb042")
(setf (get torobo_msgs::DeleteTeachingPoint :datatype-) "torobo_msgs/DeleteTeachingPoint")
(setf (get torobo_msgs::DeleteTeachingPoint :request) torobo_msgs::DeleteTeachingPointRequest)
(setf (get torobo_msgs::DeleteTeachingPoint :response) torobo_msgs::DeleteTeachingPointResponse)

(defmethod torobo_msgs::DeleteTeachingPointRequest
  (:response () (instance torobo_msgs::DeleteTeachingPointResponse :init)))

(setf (get torobo_msgs::DeleteTeachingPointRequest :md5sum-) "a2c869ed0a6122eb036ee623c16fb042")
(setf (get torobo_msgs::DeleteTeachingPointRequest :datatype-) "torobo_msgs/DeleteTeachingPointRequest")
(setf (get torobo_msgs::DeleteTeachingPointRequest :definition-)
      "string teachingPointName 
---
bool success
")

(setf (get torobo_msgs::DeleteTeachingPointResponse :md5sum-) "a2c869ed0a6122eb036ee623c16fb042")
(setf (get torobo_msgs::DeleteTeachingPointResponse :datatype-) "torobo_msgs/DeleteTeachingPointResponse")
(setf (get torobo_msgs::DeleteTeachingPointResponse :definition-)
      "string teachingPointName 
---
bool success
")



(provide :torobo_msgs/DeleteTeachingPoint "a2c869ed0a6122eb036ee623c16fb042")


