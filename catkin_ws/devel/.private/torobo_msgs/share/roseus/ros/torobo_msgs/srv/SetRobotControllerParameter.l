;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::SetRobotControllerParameter)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'SetRobotControllerParameter (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::SETROBOTCONTROLLERPARAMETER")
  (make-package "TOROBO_MSGS::SETROBOTCONTROLLERPARAMETER"))
(unless (find-package "TOROBO_MSGS::SETROBOTCONTROLLERPARAMETERREQUEST")
  (make-package "TOROBO_MSGS::SETROBOTCONTROLLERPARAMETERREQUEST"))
(unless (find-package "TOROBO_MSGS::SETROBOTCONTROLLERPARAMETERRESPONSE")
  (make-package "TOROBO_MSGS::SETROBOTCONTROLLERPARAMETERRESPONSE"))

(in-package "ROS")





(defclass torobo_msgs::SetRobotControllerParameterRequest
  :super ros::object
  :slots (_parameter_name _joint_names _parameter_values ))

(defmethod torobo_msgs::SetRobotControllerParameterRequest
  (:init
   (&key
    ((:parameter_name __parameter_name) "")
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:parameter_values __parameter_values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _parameter_name (string __parameter_name))
   (setq _joint_names __joint_names)
   (setq _parameter_values __parameter_values)
   self)
  (:parameter_name
   (&optional __parameter_name)
   (if __parameter_name (setq _parameter_name __parameter_name)) _parameter_name)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:parameter_values
   (&optional __parameter_values)
   (if __parameter_values (setq _parameter_values __parameter_values)) _parameter_values)
  (:serialization-length
   ()
   (+
    ;; string _parameter_name
    4 (length _parameter_name)
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; float32[] _parameter_values
    (* 4    (length _parameter_values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _parameter_name
       (write-long (length _parameter_name) s) (princ _parameter_name s)
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _parameter_values
     (write-long (length _parameter_values) s)
     (dotimes (i (length _parameter_values))
       (sys::poke (elt _parameter_values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _parameter_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parameter_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _parameter_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parameter_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _parameter_values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass torobo_msgs::SetRobotControllerParameterResponse
  :super ros::object
  :slots (_success ))

(defmethod torobo_msgs::SetRobotControllerParameterResponse
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

(defclass torobo_msgs::SetRobotControllerParameter
  :super ros::object
  :slots ())

(setf (get torobo_msgs::SetRobotControllerParameter :md5sum-) "f6a7b3b84aaf90a78da4f4ecdbe454b7")
(setf (get torobo_msgs::SetRobotControllerParameter :datatype-) "torobo_msgs/SetRobotControllerParameter")
(setf (get torobo_msgs::SetRobotControllerParameter :request) torobo_msgs::SetRobotControllerParameterRequest)
(setf (get torobo_msgs::SetRobotControllerParameter :response) torobo_msgs::SetRobotControllerParameterResponse)

(defmethod torobo_msgs::SetRobotControllerParameterRequest
  (:response () (instance torobo_msgs::SetRobotControllerParameterResponse :init)))

(setf (get torobo_msgs::SetRobotControllerParameterRequest :md5sum-) "f6a7b3b84aaf90a78da4f4ecdbe454b7")
(setf (get torobo_msgs::SetRobotControllerParameterRequest :datatype-) "torobo_msgs/SetRobotControllerParameterRequest")
(setf (get torobo_msgs::SetRobotControllerParameterRequest :definition-)
      "string parameter_name
string[] joint_names
float32[] parameter_values
---
bool success

")

(setf (get torobo_msgs::SetRobotControllerParameterResponse :md5sum-) "f6a7b3b84aaf90a78da4f4ecdbe454b7")
(setf (get torobo_msgs::SetRobotControllerParameterResponse :datatype-) "torobo_msgs/SetRobotControllerParameterResponse")
(setf (get torobo_msgs::SetRobotControllerParameterResponse :definition-)
      "string parameter_name
string[] joint_names
float32[] parameter_values
---
bool success

")



(provide :torobo_msgs/SetRobotControllerParameter "f6a7b3b84aaf90a78da4f4ecdbe454b7")


