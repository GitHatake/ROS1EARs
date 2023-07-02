;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::GetToroboJointState)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'GetToroboJointState (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::GETTOROBOJOINTSTATE")
  (make-package "TOROBO_MSGS::GETTOROBOJOINTSTATE"))
(unless (find-package "TOROBO_MSGS::GETTOROBOJOINTSTATEREQUEST")
  (make-package "TOROBO_MSGS::GETTOROBOJOINTSTATEREQUEST"))
(unless (find-package "TOROBO_MSGS::GETTOROBOJOINTSTATERESPONSE")
  (make-package "TOROBO_MSGS::GETTOROBOJOINTSTATERESPONSE"))

(in-package "ROS")





(defclass torobo_msgs::GetToroboJointStateRequest
  :super ros::object
  :slots (_controllerName ))

(defmethod torobo_msgs::GetToroboJointStateRequest
  (:init
   (&key
    ((:controllerName __controllerName) "")
    )
   (send-super :init)
   (setq _controllerName (string __controllerName))
   self)
  (:controllerName
   (&optional __controllerName)
   (if __controllerName (setq _controllerName __controllerName)) _controllerName)
  (:serialization-length
   ()
   (+
    ;; string _controllerName
    4 (length _controllerName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _controllerName
       (write-long (length _controllerName) s) (princ _controllerName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _controllerName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _controllerName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass torobo_msgs::GetToroboJointStateResponse
  :super ros::object
  :slots (_toroboJointState ))

(defmethod torobo_msgs::GetToroboJointStateResponse
  (:init
   (&key
    ((:toroboJointState __toroboJointState) (instance torobo_msgs::ToroboJointState :init))
    )
   (send-super :init)
   (setq _toroboJointState __toroboJointState)
   self)
  (:toroboJointState
   (&rest __toroboJointState)
   (if (keywordp (car __toroboJointState))
       (send* _toroboJointState __toroboJointState)
     (progn
       (if __toroboJointState (setq _toroboJointState (car __toroboJointState)))
       _toroboJointState)))
  (:serialization-length
   ()
   (+
    ;; torobo_msgs/ToroboJointState _toroboJointState
    (send _toroboJointState :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; torobo_msgs/ToroboJointState _toroboJointState
       (send _toroboJointState :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; torobo_msgs/ToroboJointState _toroboJointState
     (send _toroboJointState :deserialize buf ptr-) (incf ptr- (send _toroboJointState :serialization-length))
   ;;
   self)
  )

(defclass torobo_msgs::GetToroboJointState
  :super ros::object
  :slots ())

(setf (get torobo_msgs::GetToroboJointState :md5sum-) "f076a05b5c866f51043035790c9b9bbf")
(setf (get torobo_msgs::GetToroboJointState :datatype-) "torobo_msgs/GetToroboJointState")
(setf (get torobo_msgs::GetToroboJointState :request) torobo_msgs::GetToroboJointStateRequest)
(setf (get torobo_msgs::GetToroboJointState :response) torobo_msgs::GetToroboJointStateResponse)

(defmethod torobo_msgs::GetToroboJointStateRequest
  (:response () (instance torobo_msgs::GetToroboJointStateResponse :init)))

(setf (get torobo_msgs::GetToroboJointStateRequest :md5sum-) "f076a05b5c866f51043035790c9b9bbf")
(setf (get torobo_msgs::GetToroboJointStateRequest :datatype-) "torobo_msgs/GetToroboJointStateRequest")
(setf (get torobo_msgs::GetToroboJointStateRequest :definition-)
      "string controllerName
---
torobo_msgs/ToroboJointState toroboJointState

================================================================================
MSG: torobo_msgs/ToroboJointState
Header header

uint64 timeStamp
uint64 hostTimeStamp
string[] name
uint32[] type
uint32[] comStatus
uint32[] systemMode
uint32[] ctrlMode
uint64[] errorWarningStatus
uint32[] trjStatus
uint32[] trjViaRemain
float64[] refCurrent
float64[] refPosition
float64[] refVelocity
float64[] refAcceleration
float64[] refEffort
float64[] current
float64[] position
float64[] velocity
float64[] outConvInVelocity
float64[] acceleration
float64[] outConvInAcceleration
float64[] effort
float64[] temperature
float64[] general_0
float64[] general_1
float64[] general_2
float64[] general_3

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")

(setf (get torobo_msgs::GetToroboJointStateResponse :md5sum-) "f076a05b5c866f51043035790c9b9bbf")
(setf (get torobo_msgs::GetToroboJointStateResponse :datatype-) "torobo_msgs/GetToroboJointStateResponse")
(setf (get torobo_msgs::GetToroboJointStateResponse :definition-)
      "string controllerName
---
torobo_msgs/ToroboJointState toroboJointState

================================================================================
MSG: torobo_msgs/ToroboJointState
Header header

uint64 timeStamp
uint64 hostTimeStamp
string[] name
uint32[] type
uint32[] comStatus
uint32[] systemMode
uint32[] ctrlMode
uint64[] errorWarningStatus
uint32[] trjStatus
uint32[] trjViaRemain
float64[] refCurrent
float64[] refPosition
float64[] refVelocity
float64[] refAcceleration
float64[] refEffort
float64[] current
float64[] position
float64[] velocity
float64[] outConvInVelocity
float64[] acceleration
float64[] outConvInAcceleration
float64[] effort
float64[] temperature
float64[] general_0
float64[] general_1
float64[] general_2
float64[] general_3

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")



(provide :torobo_msgs/GetToroboJointState "f076a05b5c866f51043035790c9b9bbf")


