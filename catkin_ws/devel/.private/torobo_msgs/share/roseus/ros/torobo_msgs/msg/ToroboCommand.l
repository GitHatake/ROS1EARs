;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::ToroboCommand)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'ToroboCommand (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::TOROBOCOMMAND")
  (make-package "TOROBO_MSGS::TOROBOCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ToroboCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass torobo_msgs::ToroboCommand
  :super ros::object
  :slots (_header _timeStamp _wholeOrder _name _jointOrder _value1 _value2 _value3 _value4 ))

(defmethod torobo_msgs::ToroboCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:timeStamp __timeStamp) 0)
    ((:wholeOrder __wholeOrder) 0)
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:jointOrder __jointOrder) (make-array 0 :initial-element 0 :element-type :integer))
    ((:value1 __value1) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:value2 __value2) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:value3 __value3) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:value4 __value4) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _timeStamp (round __timeStamp))
   (setq _wholeOrder (round __wholeOrder))
   (setq _name __name)
   (setq _jointOrder __jointOrder)
   (setq _value1 __value1)
   (setq _value2 __value2)
   (setq _value3 __value3)
   (setq _value4 __value4)
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
  (:wholeOrder
   (&optional __wholeOrder)
   (if __wholeOrder (setq _wholeOrder __wholeOrder)) _wholeOrder)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:jointOrder
   (&optional __jointOrder)
   (if __jointOrder (setq _jointOrder __jointOrder)) _jointOrder)
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
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _timeStamp
    8
    ;; uint32 _wholeOrder
    4
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; uint32[] _jointOrder
    (* 4    (length _jointOrder)) 4
    ;; float32[] _value1
    (* 4    (length _value1)) 4
    ;; float32[] _value2
    (* 4    (length _value2)) 4
    ;; float32[] _value3
    (* 4    (length _value3)) 4
    ;; float32[] _value4
    (* 4    (length _value4)) 4
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
     ;; uint32 _wholeOrder
       (write-long _wholeOrder s)
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; uint32[] _jointOrder
     (write-long (length _jointOrder) s)
     (dotimes (i (length _jointOrder))
       (write-long (elt _jointOrder i) s)
       )
     ;; float32[] _value1
     (write-long (length _value1) s)
     (dotimes (i (length _value1))
       (sys::poke (elt _value1 i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _value2
     (write-long (length _value2) s)
     (dotimes (i (length _value2))
       (sys::poke (elt _value2 i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _value3
     (write-long (length _value3) s)
     (dotimes (i (length _value3))
       (sys::poke (elt _value3 i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _value4
     (write-long (length _value4) s)
     (dotimes (i (length _value4))
       (sys::poke (elt _value4 i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
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
   ;; uint32 _wholeOrder
     (setq _wholeOrder (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; uint32[] _jointOrder
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _jointOrder (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _jointOrder i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _value1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _value1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _value1 i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _value2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _value2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _value2 i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _value3
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _value3 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _value3 i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _value4
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _value4 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _value4 i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get torobo_msgs::ToroboCommand :md5sum-) "3bf8e50c61e424559a97586c3168409a")
(setf (get torobo_msgs::ToroboCommand :datatype-) "torobo_msgs/ToroboCommand")
(setf (get torobo_msgs::ToroboCommand :definition-)
      "Header header

uint64 timeStamp
uint32 wholeOrder
string[] name
uint32[] jointOrder
float32[] value1
float32[] value2
float32[] value3
float32[] value4

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



(provide :torobo_msgs/ToroboCommand "3bf8e50c61e424559a97586c3168409a")


