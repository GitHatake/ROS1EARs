;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::ControllData)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'ControllData (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::CONTROLLDATA")
  (make-package "TOROBO_MSGS::CONTROLLDATA"))

(in-package "ROS")
;;//! \htmlinclude ControllData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass torobo_msgs::ControllData
  :super ros::object
  :slots (_header _OriginalJointValue _RealsenseDepth ))

(defmethod torobo_msgs::ControllData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:OriginalJointValue __OriginalJointValue) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:RealsenseDepth __RealsenseDepth) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _OriginalJointValue __OriginalJointValue)
   (setq _RealsenseDepth (float __RealsenseDepth))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:OriginalJointValue
   (&optional __OriginalJointValue)
   (if __OriginalJointValue (setq _OriginalJointValue __OriginalJointValue)) _OriginalJointValue)
  (:RealsenseDepth
   (&optional __RealsenseDepth)
   (if __RealsenseDepth (setq _RealsenseDepth __RealsenseDepth)) _RealsenseDepth)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _OriginalJointValue
    (* 8    (length _OriginalJointValue)) 4
    ;; float64 _RealsenseDepth
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _OriginalJointValue
     (write-long (length _OriginalJointValue) s)
     (dotimes (i (length _OriginalJointValue))
       (sys::poke (elt _OriginalJointValue i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _RealsenseDepth
       (sys::poke _RealsenseDepth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _OriginalJointValue
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _OriginalJointValue (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _OriginalJointValue i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _RealsenseDepth
     (setq _RealsenseDepth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get torobo_msgs::ControllData :md5sum-) "cc555df7797f83d8d79097c136b37e1f")
(setf (get torobo_msgs::ControllData :datatype-) "torobo_msgs/ControllData")
(setf (get torobo_msgs::ControllData :definition-)
      "Header header

float64[] OriginalJointValue
float64 RealsenseDepth

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



(provide :torobo_msgs/ControllData "cc555df7797f83d8d79097c136b37e1f")


