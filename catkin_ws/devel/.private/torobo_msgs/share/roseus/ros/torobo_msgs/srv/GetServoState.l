;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::GetServoState)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'GetServoState (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::GETSERVOSTATE")
  (make-package "TOROBO_MSGS::GETSERVOSTATE"))
(unless (find-package "TOROBO_MSGS::GETSERVOSTATEREQUEST")
  (make-package "TOROBO_MSGS::GETSERVOSTATEREQUEST"))
(unless (find-package "TOROBO_MSGS::GETSERVOSTATERESPONSE")
  (make-package "TOROBO_MSGS::GETSERVOSTATERESPONSE"))

(in-package "ROS")





(defclass torobo_msgs::GetServoStateRequest
  :super ros::object
  :slots (_joint_names ))

(defmethod torobo_msgs::GetServoStateRequest
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

(defclass torobo_msgs::GetServoStateResponse
  :super ros::object
  :slots (_is_servo_on ))

(defmethod torobo_msgs::GetServoStateResponse
  (:init
   (&key
    ((:is_servo_on __is_servo_on) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _is_servo_on __is_servo_on)
   self)
  (:is_servo_on
   (&optional __is_servo_on)
   (if __is_servo_on (setq _is_servo_on __is_servo_on)) _is_servo_on)
  (:serialization-length
   ()
   (+
    ;; bool[] _is_servo_on
    (* 1    (length _is_servo_on)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[] _is_servo_on
     (write-long (length _is_servo_on) s)
     (dotimes (i (length _is_servo_on))
       (if (elt _is_servo_on i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[] _is_servo_on
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _is_servo_on (make-list n))
     (dotimes (i n)
     (setf (elt _is_servo_on i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(defclass torobo_msgs::GetServoState
  :super ros::object
  :slots ())

(setf (get torobo_msgs::GetServoState :md5sum-) "97bcac43fb1f87b145f4ed8da59438f9")
(setf (get torobo_msgs::GetServoState :datatype-) "torobo_msgs/GetServoState")
(setf (get torobo_msgs::GetServoState :request) torobo_msgs::GetServoStateRequest)
(setf (get torobo_msgs::GetServoState :response) torobo_msgs::GetServoStateResponse)

(defmethod torobo_msgs::GetServoStateRequest
  (:response () (instance torobo_msgs::GetServoStateResponse :init)))

(setf (get torobo_msgs::GetServoStateRequest :md5sum-) "97bcac43fb1f87b145f4ed8da59438f9")
(setf (get torobo_msgs::GetServoStateRequest :datatype-) "torobo_msgs/GetServoStateRequest")
(setf (get torobo_msgs::GetServoStateRequest :definition-)
      "string[] joint_names
---
bool[] is_servo_on
")

(setf (get torobo_msgs::GetServoStateResponse :md5sum-) "97bcac43fb1f87b145f4ed8da59438f9")
(setf (get torobo_msgs::GetServoStateResponse :datatype-) "torobo_msgs/GetServoStateResponse")
(setf (get torobo_msgs::GetServoStateResponse :definition-)
      "string[] joint_names
---
bool[] is_servo_on
")



(provide :torobo_msgs/GetServoState "97bcac43fb1f87b145f4ed8da59438f9")


