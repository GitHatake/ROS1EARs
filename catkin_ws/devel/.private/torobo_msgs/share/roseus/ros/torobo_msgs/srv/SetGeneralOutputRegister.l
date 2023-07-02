;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::SetGeneralOutputRegister)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'SetGeneralOutputRegister (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::SETGENERALOUTPUTREGISTER")
  (make-package "TOROBO_MSGS::SETGENERALOUTPUTREGISTER"))
(unless (find-package "TOROBO_MSGS::SETGENERALOUTPUTREGISTERREQUEST")
  (make-package "TOROBO_MSGS::SETGENERALOUTPUTREGISTERREQUEST"))
(unless (find-package "TOROBO_MSGS::SETGENERALOUTPUTREGISTERRESPONSE")
  (make-package "TOROBO_MSGS::SETGENERALOUTPUTREGISTERRESPONSE"))

(in-package "ROS")





(defclass torobo_msgs::SetGeneralOutputRegisterRequest
  :super ros::object
  :slots (_general_register_number _parameter_name _joint_names ))

(defmethod torobo_msgs::SetGeneralOutputRegisterRequest
  (:init
   (&key
    ((:general_register_number __general_register_number) 0)
    ((:parameter_name __parameter_name) "")
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _general_register_number (round __general_register_number))
   (setq _parameter_name (string __parameter_name))
   (setq _joint_names __joint_names)
   self)
  (:general_register_number
   (&optional __general_register_number)
   (if __general_register_number (setq _general_register_number __general_register_number)) _general_register_number)
  (:parameter_name
   (&optional __parameter_name)
   (if __parameter_name (setq _parameter_name __parameter_name)) _parameter_name)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:serialization-length
   ()
   (+
    ;; int32 _general_register_number
    4
    ;; string _parameter_name
    4 (length _parameter_name)
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _general_register_number
       (write-long _general_register_number s)
     ;; string _parameter_name
       (write-long (length _parameter_name) s) (princ _parameter_name s)
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _general_register_number
     (setq _general_register_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _parameter_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parameter_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(defclass torobo_msgs::SetGeneralOutputRegisterResponse
  :super ros::object
  :slots (_success ))

(defmethod torobo_msgs::SetGeneralOutputRegisterResponse
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

(defclass torobo_msgs::SetGeneralOutputRegister
  :super ros::object
  :slots ())

(setf (get torobo_msgs::SetGeneralOutputRegister :md5sum-) "f1fc8a310987bc35733b0d0e64490c68")
(setf (get torobo_msgs::SetGeneralOutputRegister :datatype-) "torobo_msgs/SetGeneralOutputRegister")
(setf (get torobo_msgs::SetGeneralOutputRegister :request) torobo_msgs::SetGeneralOutputRegisterRequest)
(setf (get torobo_msgs::SetGeneralOutputRegister :response) torobo_msgs::SetGeneralOutputRegisterResponse)

(defmethod torobo_msgs::SetGeneralOutputRegisterRequest
  (:response () (instance torobo_msgs::SetGeneralOutputRegisterResponse :init)))

(setf (get torobo_msgs::SetGeneralOutputRegisterRequest :md5sum-) "f1fc8a310987bc35733b0d0e64490c68")
(setf (get torobo_msgs::SetGeneralOutputRegisterRequest :datatype-) "torobo_msgs/SetGeneralOutputRegisterRequest")
(setf (get torobo_msgs::SetGeneralOutputRegisterRequest :definition-)
      "# \"general_register_number\" : Target general register number [0-3]
# \"parameter_name\" : parameter name set to target general regiseter
# \"joint_names\" : Target joint names
int32 general_register_number
string parameter_name
string[] joint_names
---
bool success

")

(setf (get torobo_msgs::SetGeneralOutputRegisterResponse :md5sum-) "f1fc8a310987bc35733b0d0e64490c68")
(setf (get torobo_msgs::SetGeneralOutputRegisterResponse :datatype-) "torobo_msgs/SetGeneralOutputRegisterResponse")
(setf (get torobo_msgs::SetGeneralOutputRegisterResponse :definition-)
      "# \"general_register_number\" : Target general register number [0-3]
# \"parameter_name\" : parameter name set to target general regiseter
# \"joint_names\" : Target joint names
int32 general_register_number
string parameter_name
string[] joint_names
---
bool success

")



(provide :torobo_msgs/SetGeneralOutputRegister "f1fc8a310987bc35733b0d0e64490c68")


