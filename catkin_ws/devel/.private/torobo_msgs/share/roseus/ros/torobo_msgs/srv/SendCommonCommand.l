;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::SendCommonCommand)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'SendCommonCommand (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::SENDCOMMONCOMMAND")
  (make-package "TOROBO_MSGS::SENDCOMMONCOMMAND"))
(unless (find-package "TOROBO_MSGS::SENDCOMMONCOMMANDREQUEST")
  (make-package "TOROBO_MSGS::SENDCOMMONCOMMANDREQUEST"))
(unless (find-package "TOROBO_MSGS::SENDCOMMONCOMMANDRESPONSE")
  (make-package "TOROBO_MSGS::SENDCOMMONCOMMANDRESPONSE"))

(in-package "ROS")





(defclass torobo_msgs::SendCommonCommandRequest
  :super ros::object
  :slots (_joint_names _whole_order _joint_order _value1 _value2 _value3 _value4 ))

(defmethod torobo_msgs::SendCommonCommandRequest
  (:init
   (&key
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:whole_order __whole_order) 0)
    ((:joint_order __joint_order) 0)
    ((:value1 __value1) 0.0)
    ((:value2 __value2) 0.0)
    ((:value3 __value3) 0.0)
    ((:value4 __value4) 0.0)
    )
   (send-super :init)
   (setq _joint_names __joint_names)
   (setq _whole_order (round __whole_order))
   (setq _joint_order (round __joint_order))
   (setq _value1 (float __value1))
   (setq _value2 (float __value2))
   (setq _value3 (float __value3))
   (setq _value4 (float __value4))
   self)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:whole_order
   (&optional __whole_order)
   (if __whole_order (setq _whole_order __whole_order)) _whole_order)
  (:joint_order
   (&optional __joint_order)
   (if __joint_order (setq _joint_order __joint_order)) _joint_order)
  (:value1
   (&optional __value1)
   (if __value1 (setq _value1 __value1)) _value1)
  (:value2
   (&optional __value2)
   (if __value2 (setq _value2 __value2)) _value2)
  (:value3
   (&optional __value3)
   (if __value3 (setq _value3 __value3)) _value3)
  (:value4
   (&optional __value4)
   (if __value4 (setq _value4 __value4)) _value4)
  (:serialization-length
   ()
   (+
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; uint32 _whole_order
    4
    ;; uint32 _joint_order
    4
    ;; float32 _value1
    4
    ;; float32 _value2
    4
    ;; float32 _value3
    4
    ;; float32 _value4
    4
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
     ;; uint32 _whole_order
       (write-long _whole_order s)
     ;; uint32 _joint_order
       (write-long _joint_order s)
     ;; float32 _value1
       (sys::poke _value1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _value2
       (sys::poke _value2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _value3
       (sys::poke _value3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _value4
       (sys::poke _value4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; uint32 _whole_order
     (setq _whole_order (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _joint_order
     (setq _joint_order (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _value1
     (setq _value1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _value2
     (setq _value2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _value3
     (setq _value3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _value4
     (setq _value4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass torobo_msgs::SendCommonCommandResponse
  :super ros::object
  :slots (_success ))

(defmethod torobo_msgs::SendCommonCommandResponse
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

(defclass torobo_msgs::SendCommonCommand
  :super ros::object
  :slots ())

(setf (get torobo_msgs::SendCommonCommand :md5sum-) "64dbb1a2af96fe7e3d28eaf27482f2f9")
(setf (get torobo_msgs::SendCommonCommand :datatype-) "torobo_msgs/SendCommonCommand")
(setf (get torobo_msgs::SendCommonCommand :request) torobo_msgs::SendCommonCommandRequest)
(setf (get torobo_msgs::SendCommonCommand :response) torobo_msgs::SendCommonCommandResponse)

(defmethod torobo_msgs::SendCommonCommandRequest
  (:response () (instance torobo_msgs::SendCommonCommandResponse :init)))

(setf (get torobo_msgs::SendCommonCommandRequest :md5sum-) "64dbb1a2af96fe7e3d28eaf27482f2f9")
(setf (get torobo_msgs::SendCommonCommandRequest :datatype-) "torobo_msgs/SendCommonCommandRequest")
(setf (get torobo_msgs::SendCommonCommandRequest :definition-)
      "string[] joint_names
uint32 whole_order
uint32 joint_order
float32 value1
float32 value2
float32 value3
float32 value4
---
bool success

")

(setf (get torobo_msgs::SendCommonCommandResponse :md5sum-) "64dbb1a2af96fe7e3d28eaf27482f2f9")
(setf (get torobo_msgs::SendCommonCommandResponse :datatype-) "torobo_msgs/SendCommonCommandResponse")
(setf (get torobo_msgs::SendCommonCommandResponse :definition-)
      "string[] joint_names
uint32 whole_order
uint32 joint_order
float32 value1
float32 value2
float32 value3
float32 value4
---
bool success

")



(provide :torobo_msgs/SendCommonCommand "64dbb1a2af96fe7e3d28eaf27482f2f9")


