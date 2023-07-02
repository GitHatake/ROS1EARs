;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::CalculateData)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'CalculateData (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::CALCULATEDATA")
  (make-package "TOROBO_MSGS::CALCULATEDATA"))

(in-package "ROS")
;;//! \htmlinclude CalculateData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass torobo_msgs::CalculateData
  :super ros::object
  :slots (_header _CalculatedJointValue ))

(defmethod torobo_msgs::CalculateData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:CalculatedJointValue __CalculatedJointValue) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _CalculatedJointValue __CalculatedJointValue)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:CalculatedJointValue
   (&optional __CalculatedJointValue)
   (if __CalculatedJointValue (setq _CalculatedJointValue __CalculatedJointValue)) _CalculatedJointValue)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _CalculatedJointValue
    (* 8    (length _CalculatedJointValue)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _CalculatedJointValue
     (write-long (length _CalculatedJointValue) s)
     (dotimes (i (length _CalculatedJointValue))
       (sys::poke (elt _CalculatedJointValue i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _CalculatedJointValue
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _CalculatedJointValue (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _CalculatedJointValue i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get torobo_msgs::CalculateData :md5sum-) "dbe3f603e6909e94b26707520c4cef74")
(setf (get torobo_msgs::CalculateData :datatype-) "torobo_msgs/CalculateData")
(setf (get torobo_msgs::CalculateData :definition-)
      "Header header

float64[] CalculatedJointValue
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



(provide :torobo_msgs/CalculateData "dbe3f603e6909e94b26707520c4cef74")


