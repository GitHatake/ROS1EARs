;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::ToroboDynamics)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'ToroboDynamics (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::TOROBODYNAMICS")
  (make-package "TOROBO_MSGS::TOROBODYNAMICS"))

(in-package "ROS")
;;//! \htmlinclude ToroboDynamics.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass torobo_msgs::ToroboDynamics
  :super ros::object
  :slots (_header _timeStamp _name _gravity_compensation_effort _ref_dynamics_effort _cur_dynamics_effort _inertia_diagonal ))

(defmethod torobo_msgs::ToroboDynamics
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:timeStamp __timeStamp) 0)
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:gravity_compensation_effort __gravity_compensation_effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ref_dynamics_effort __ref_dynamics_effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cur_dynamics_effort __cur_dynamics_effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:inertia_diagonal __inertia_diagonal) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _timeStamp (round __timeStamp))
   (setq _name __name)
   (setq _gravity_compensation_effort __gravity_compensation_effort)
   (setq _ref_dynamics_effort __ref_dynamics_effort)
   (setq _cur_dynamics_effort __cur_dynamics_effort)
   (setq _inertia_diagonal __inertia_diagonal)
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
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:gravity_compensation_effort
   (&optional __gravity_compensation_effort)
   (if __gravity_compensation_effort (setq _gravity_compensation_effort __gravity_compensation_effort)) _gravity_compensation_effort)
  (:ref_dynamics_effort
   (&optional __ref_dynamics_effort)
   (if __ref_dynamics_effort (setq _ref_dynamics_effort __ref_dynamics_effort)) _ref_dynamics_effort)
  (:cur_dynamics_effort
   (&optional __cur_dynamics_effort)
   (if __cur_dynamics_effort (setq _cur_dynamics_effort __cur_dynamics_effort)) _cur_dynamics_effort)
  (:inertia_diagonal
   (&optional __inertia_diagonal)
   (if __inertia_diagonal (setq _inertia_diagonal __inertia_diagonal)) _inertia_diagonal)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _timeStamp
    8
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; float64[] _gravity_compensation_effort
    (* 8    (length _gravity_compensation_effort)) 4
    ;; float64[] _ref_dynamics_effort
    (* 8    (length _ref_dynamics_effort)) 4
    ;; float64[] _cur_dynamics_effort
    (* 8    (length _cur_dynamics_effort)) 4
    ;; float64[] _inertia_diagonal
    (* 8    (length _inertia_diagonal)) 4
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
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _gravity_compensation_effort
     (write-long (length _gravity_compensation_effort) s)
     (dotimes (i (length _gravity_compensation_effort))
       (sys::poke (elt _gravity_compensation_effort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _ref_dynamics_effort
     (write-long (length _ref_dynamics_effort) s)
     (dotimes (i (length _ref_dynamics_effort))
       (sys::poke (elt _ref_dynamics_effort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _cur_dynamics_effort
     (write-long (length _cur_dynamics_effort) s)
     (dotimes (i (length _cur_dynamics_effort))
       (sys::poke (elt _cur_dynamics_effort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _inertia_diagonal
     (write-long (length _inertia_diagonal) s)
     (dotimes (i (length _inertia_diagonal))
       (sys::poke (elt _inertia_diagonal i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _gravity_compensation_effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gravity_compensation_effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _gravity_compensation_effort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _ref_dynamics_effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ref_dynamics_effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ref_dynamics_effort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _cur_dynamics_effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cur_dynamics_effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cur_dynamics_effort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _inertia_diagonal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _inertia_diagonal (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _inertia_diagonal i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get torobo_msgs::ToroboDynamics :md5sum-) "ddf478c1627240b10931b0b2684ea858")
(setf (get torobo_msgs::ToroboDynamics :datatype-) "torobo_msgs/ToroboDynamics")
(setf (get torobo_msgs::ToroboDynamics :definition-)
      "Header header

uint64 timeStamp
string[] name
float64[] gravity_compensation_effort
float64[] ref_dynamics_effort
float64[] cur_dynamics_effort
float64[] inertia_diagonal

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



(provide :torobo_msgs/ToroboDynamics "ddf478c1627240b10931b0b2684ea858")


