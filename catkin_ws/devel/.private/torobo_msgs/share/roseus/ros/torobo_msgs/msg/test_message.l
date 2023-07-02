;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::test_message)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'test_message (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::TEST_MESSAGE")
  (make-package "TOROBO_MSGS::TEST_MESSAGE"))

(in-package "ROS")
;;//! \htmlinclude test_message.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass torobo_msgs::test_message
  :super ros::object
  :slots (_header _timeStamp _test_float1 _test_float2 ))

(defmethod torobo_msgs::test_message
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:timeStamp __timeStamp) 0)
    ((:test_float1 __test_float1) 0.0)
    ((:test_float2 __test_float2) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _timeStamp (round __timeStamp))
   (setq _test_float1 (float __test_float1))
   (setq _test_float2 (float __test_float2))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:timeStamp
   (&optional __timeStamp)
   (if __timeStamp (setq _timeStamp __timeStamp)) _timeStamp)
  (:test_float1
   (&optional __test_float1)
   (if __test_float1 (setq _test_float1 __test_float1)) _test_float1)
  (:test_float2
   (&optional __test_float2)
   (if __test_float2 (setq _test_float2 __test_float2)) _test_float2)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _timeStamp
    8
    ;; float64 _test_float1
    8
    ;; float64 _test_float2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint64 _timeStamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timeStamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timeStamp) (= (length (_timeStamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timeStamp . bv) 0) 0) s)
              (write-long (ash (elt (_timeStamp . bv) 1) -1) s))
             ((and (class _timeStamp) (= (length (_timeStamp . bv)) 1)) ;; big1
              (write-long (elt (_timeStamp . bv) 0) s)
              (write-long (if (>= _timeStamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timeStamp s)(write-long (if (>= _timeStamp 0) 0 #xffffffff) s)))
     ;; float64 _test_float1
       (sys::poke _test_float1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _test_float2
       (sys::poke _test_float2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint64 _timeStamp
     
#+(or :alpha :irix6 :x86_64)
      (setf _timeStamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timeStamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _test_float1
     (setq _test_float1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _test_float2
     (setq _test_float2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get torobo_msgs::test_message :md5sum-) "96068ba7517aeb29192183e2d4f6c968")
(setf (get torobo_msgs::test_message :datatype-) "torobo_msgs/test_message")
(setf (get torobo_msgs::test_message :definition-)
      "Header header

uint64 timeStamp
float64 test_float1
float64 test_float2

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



(provide :torobo_msgs/test_message "96068ba7517aeb29192183e2d4f6c968")


