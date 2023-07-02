;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::SetControlMode)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'SetControlMode (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::SETCONTROLMODE")
  (make-package "TOROBO_MSGS::SETCONTROLMODE"))
(unless (find-package "TOROBO_MSGS::SETCONTROLMODEREQUEST")
  (make-package "TOROBO_MSGS::SETCONTROLMODEREQUEST"))
(unless (find-package "TOROBO_MSGS::SETCONTROLMODERESPONSE")
  (make-package "TOROBO_MSGS::SETCONTROLMODERESPONSE"))

(in-package "ROS")





(defclass torobo_msgs::SetControlModeRequest
  :super ros::object
  :slots (_control_mode_name _joint_names ))

(defmethod torobo_msgs::SetControlModeRequest
  (:init
   (&key
    ((:control_mode_name __control_mode_name) "")
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _control_mode_name (string __control_mode_name))
   (setq _joint_names __joint_names)
   self)
  (:control_mode_name
   (&optional __control_mode_name)
   (if __control_mode_name (setq _control_mode_name __control_mode_name)) _control_mode_name)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:serialization-length
   ()
   (+
    ;; string _control_mode_name
    4 (length _control_mode_name)
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _control_mode_name
       (write-long (length _control_mode_name) s) (princ _control_mode_name s)
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _control_mode_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _control_mode_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(defclass torobo_msgs::SetControlModeResponse
  :super ros::object
  :slots (_success ))

(defmethod torobo_msgs::SetControlModeResponse
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

(defclass torobo_msgs::SetControlMode
  :super ros::object
  :slots ())

(setf (get torobo_msgs::SetControlMode :md5sum-) "e26e80bafb3f23a073b513f0feca433e")
(setf (get torobo_msgs::SetControlMode :datatype-) "torobo_msgs/SetControlMode")
(setf (get torobo_msgs::SetControlMode :request) torobo_msgs::SetControlModeRequest)
(setf (get torobo_msgs::SetControlMode :response) torobo_msgs::SetControlModeResponse)

(defmethod torobo_msgs::SetControlModeRequest
  (:response () (instance torobo_msgs::SetControlModeResponse :init)))

(setf (get torobo_msgs::SetControlModeRequest :md5sum-) "e26e80bafb3f23a073b513f0feca433e")
(setf (get torobo_msgs::SetControlModeRequest :datatype-) "torobo_msgs/SetControlModeRequest")
(setf (get torobo_msgs::SetControlModeRequest :definition-)
      "# available control_mode_name
# \"position\" : Position control mode
# \"velocity\" : Velocity control mode
# \"current\" : Current control mode
# \"external_force_following\" : External force following control mode
string control_mode_name
string[] joint_names
---
bool success

")

(setf (get torobo_msgs::SetControlModeResponse :md5sum-) "e26e80bafb3f23a073b513f0feca433e")
(setf (get torobo_msgs::SetControlModeResponse :datatype-) "torobo_msgs/SetControlModeResponse")
(setf (get torobo_msgs::SetControlModeResponse :definition-)
      "# available control_mode_name
# \"position\" : Position control mode
# \"velocity\" : Velocity control mode
# \"current\" : Current control mode
# \"external_force_following\" : External force following control mode
string control_mode_name
string[] joint_names
---
bool success

")



(provide :torobo_msgs/SetControlMode "e26e80bafb3f23a073b513f0feca433e")


