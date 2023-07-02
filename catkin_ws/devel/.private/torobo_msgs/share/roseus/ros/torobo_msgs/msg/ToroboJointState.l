;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::ToroboJointState)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'ToroboJointState (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::TOROBOJOINTSTATE")
  (make-package "TOROBO_MSGS::TOROBOJOINTSTATE"))

(in-package "ROS")
;;//! \htmlinclude ToroboJointState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass torobo_msgs::ToroboJointState
  :super ros::object
  :slots (_header _timeStamp _hostTimeStamp _name _type _comStatus _systemMode _ctrlMode _errorWarningStatus _trjStatus _trjViaRemain _refCurrent _refPosition _refVelocity _refAcceleration _refEffort _current _position _velocity _outConvInVelocity _acceleration _outConvInAcceleration _effort _temperature _general_0 _general_1 _general_2 _general_3 ))

(defmethod torobo_msgs::ToroboJointState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:timeStamp __timeStamp) 0)
    ((:hostTimeStamp __hostTimeStamp) 0)
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:type __type) (make-array 0 :initial-element 0 :element-type :integer))
    ((:comStatus __comStatus) (make-array 0 :initial-element 0 :element-type :integer))
    ((:systemMode __systemMode) (make-array 0 :initial-element 0 :element-type :integer))
    ((:ctrlMode __ctrlMode) (make-array 0 :initial-element 0 :element-type :integer))
    ((:errorWarningStatus __errorWarningStatus) (make-array 0 :initial-element 0 :element-type :integer))
    ((:trjStatus __trjStatus) (make-array 0 :initial-element 0 :element-type :integer))
    ((:trjViaRemain __trjViaRemain) (make-array 0 :initial-element 0 :element-type :integer))
    ((:refCurrent __refCurrent) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:refPosition __refPosition) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:refVelocity __refVelocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:refAcceleration __refAcceleration) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:refEffort __refEffort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:current __current) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity __velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:outConvInVelocity __outConvInVelocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:acceleration __acceleration) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:outConvInAcceleration __outConvInAcceleration) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:effort __effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:temperature __temperature) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:general_0 __general_0) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:general_1 __general_1) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:general_2 __general_2) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:general_3 __general_3) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _timeStamp (round __timeStamp))
   (setq _hostTimeStamp (round __hostTimeStamp))
   (setq _name __name)
   (setq _type __type)
   (setq _comStatus __comStatus)
   (setq _systemMode __systemMode)
   (setq _ctrlMode __ctrlMode)
   (setq _errorWarningStatus __errorWarningStatus)
   (setq _trjStatus __trjStatus)
   (setq _trjViaRemain __trjViaRemain)
   (setq _refCurrent __refCurrent)
   (setq _refPosition __refPosition)
   (setq _refVelocity __refVelocity)
   (setq _refAcceleration __refAcceleration)
   (setq _refEffort __refEffort)
   (setq _current __current)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _outConvInVelocity __outConvInVelocity)
   (setq _acceleration __acceleration)
   (setq _outConvInAcceleration __outConvInAcceleration)
   (setq _effort __effort)
   (setq _temperature __temperature)
   (setq _general_0 __general_0)
   (setq _general_1 __general_1)
   (setq _general_2 __general_2)
   (setq _general_3 __general_3)
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
  (:hostTimeStamp
   (&optional __hostTimeStamp)
   (if __hostTimeStamp (setq _hostTimeStamp __hostTimeStamp)) _hostTimeStamp)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:comStatus
   (&optional __comStatus)
   (if __comStatus (setq _comStatus __comStatus)) _comStatus)
  (:systemMode
   (&optional __systemMode)
   (if __systemMode (setq _systemMode __systemMode)) _systemMode)
  (:ctrlMode
   (&optional __ctrlMode)
   (if __ctrlMode (setq _ctrlMode __ctrlMode)) _ctrlMode)
  (:errorWarningStatus
   (&optional __errorWarningStatus)
   (if __errorWarningStatus (setq _errorWarningStatus __errorWarningStatus)) _errorWarningStatus)
  (:trjStatus
   (&optional __trjStatus)
   (if __trjStatus (setq _trjStatus __trjStatus)) _trjStatus)
  (:trjViaRemain
   (&optional __trjViaRemain)
   (if __trjViaRemain (setq _trjViaRemain __trjViaRemain)) _trjViaRemain)
  (:refCurrent
   (&optional __refCurrent)
   (if __refCurrent (setq _refCurrent __refCurrent)) _refCurrent)
  (:refPosition
   (&optional __refPosition)
   (if __refPosition (setq _refPosition __refPosition)) _refPosition)
  (:refVelocity
   (&optional __refVelocity)
   (if __refVelocity (setq _refVelocity __refVelocity)) _refVelocity)
  (:refAcceleration
   (&optional __refAcceleration)
   (if __refAcceleration (setq _refAcceleration __refAcceleration)) _refAcceleration)
  (:refEffort
   (&optional __refEffort)
   (if __refEffort (setq _refEffort __refEffort)) _refEffort)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:outConvInVelocity
   (&optional __outConvInVelocity)
   (if __outConvInVelocity (setq _outConvInVelocity __outConvInVelocity)) _outConvInVelocity)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:outConvInAcceleration
   (&optional __outConvInAcceleration)
   (if __outConvInAcceleration (setq _outConvInAcceleration __outConvInAcceleration)) _outConvInAcceleration)
  (:effort
   (&optional __effort)
   (if __effort (setq _effort __effort)) _effort)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:general_0
   (&optional __general_0)
   (if __general_0 (setq _general_0 __general_0)) _general_0)
  (:general_1
   (&optional __general_1)
   (if __general_1 (setq _general_1 __general_1)) _general_1)
  (:general_2
   (&optional __general_2)
   (if __general_2 (setq _general_2 __general_2)) _general_2)
  (:general_3
   (&optional __general_3)
   (if __general_3 (setq _general_3 __general_3)) _general_3)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _timeStamp
    8
    ;; uint64 _hostTimeStamp
    8
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; uint32[] _type
    (* 4    (length _type)) 4
    ;; uint32[] _comStatus
    (* 4    (length _comStatus)) 4
    ;; uint32[] _systemMode
    (* 4    (length _systemMode)) 4
    ;; uint32[] _ctrlMode
    (* 4    (length _ctrlMode)) 4
    ;; uint64[] _errorWarningStatus
    (* 8    (length _errorWarningStatus)) 4
    ;; uint32[] _trjStatus
    (* 4    (length _trjStatus)) 4
    ;; uint32[] _trjViaRemain
    (* 4    (length _trjViaRemain)) 4
    ;; float64[] _refCurrent
    (* 8    (length _refCurrent)) 4
    ;; float64[] _refPosition
    (* 8    (length _refPosition)) 4
    ;; float64[] _refVelocity
    (* 8    (length _refVelocity)) 4
    ;; float64[] _refAcceleration
    (* 8    (length _refAcceleration)) 4
    ;; float64[] _refEffort
    (* 8    (length _refEffort)) 4
    ;; float64[] _current
    (* 8    (length _current)) 4
    ;; float64[] _position
    (* 8    (length _position)) 4
    ;; float64[] _velocity
    (* 8    (length _velocity)) 4
    ;; float64[] _outConvInVelocity
    (* 8    (length _outConvInVelocity)) 4
    ;; float64[] _acceleration
    (* 8    (length _acceleration)) 4
    ;; float64[] _outConvInAcceleration
    (* 8    (length _outConvInAcceleration)) 4
    ;; float64[] _effort
    (* 8    (length _effort)) 4
    ;; float64[] _temperature
    (* 8    (length _temperature)) 4
    ;; float64[] _general_0
    (* 8    (length _general_0)) 4
    ;; float64[] _general_1
    (* 8    (length _general_1)) 4
    ;; float64[] _general_2
    (* 8    (length _general_2)) 4
    ;; float64[] _general_3
    (* 8    (length _general_3)) 4
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
     ;; uint64 _hostTimeStamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _hostTimeStamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _hostTimeStamp) (= (length (_hostTimeStamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_hostTimeStamp . bv) 0) 0) s)
              (write-long (ash (elt (_hostTimeStamp . bv) 1) -1) s))
             ((and (class _hostTimeStamp) (= (length (_hostTimeStamp . bv)) 1)) ;; big1
              (write-long (elt (_hostTimeStamp . bv) 0) s)
              (write-long (if (>= _hostTimeStamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _hostTimeStamp s)(write-long (if (>= _hostTimeStamp 0) 0 #xffffffff) s)))
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; uint32[] _type
     (write-long (length _type) s)
     (dotimes (i (length _type))
       (write-long (elt _type i) s)
       )
     ;; uint32[] _comStatus
     (write-long (length _comStatus) s)
     (dotimes (i (length _comStatus))
       (write-long (elt _comStatus i) s)
       )
     ;; uint32[] _systemMode
     (write-long (length _systemMode) s)
     (dotimes (i (length _systemMode))
       (write-long (elt _systemMode i) s)
       )
     ;; uint32[] _ctrlMode
     (write-long (length _ctrlMode) s)
     (dotimes (i (length _ctrlMode))
       (write-long (elt _ctrlMode i) s)
       )
     ;; uint64[] _errorWarningStatus
     (write-long (length _errorWarningStatus) s)
     (dotimes (i (length _errorWarningStatus))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _errorWarningStatus i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _errorWarningStatus i)) (= (length ((elt _errorWarningStatus i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _errorWarningStatus i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _errorWarningStatus i) . bv) 1) -1) s))
             ((and (class (elt _errorWarningStatus i)) (= (length ((elt _errorWarningStatus i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _errorWarningStatus i) . bv) 0) s)
              (write-long (if (>= (elt _errorWarningStatus i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _errorWarningStatus i) s)(write-long (if (>= (elt _errorWarningStatus i) 0) 0 #xffffffff) s)))
       )
     ;; uint32[] _trjStatus
     (write-long (length _trjStatus) s)
     (dotimes (i (length _trjStatus))
       (write-long (elt _trjStatus i) s)
       )
     ;; uint32[] _trjViaRemain
     (write-long (length _trjViaRemain) s)
     (dotimes (i (length _trjViaRemain))
       (write-long (elt _trjViaRemain i) s)
       )
     ;; float64[] _refCurrent
     (write-long (length _refCurrent) s)
     (dotimes (i (length _refCurrent))
       (sys::poke (elt _refCurrent i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _refPosition
     (write-long (length _refPosition) s)
     (dotimes (i (length _refPosition))
       (sys::poke (elt _refPosition i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _refVelocity
     (write-long (length _refVelocity) s)
     (dotimes (i (length _refVelocity))
       (sys::poke (elt _refVelocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _refAcceleration
     (write-long (length _refAcceleration) s)
     (dotimes (i (length _refAcceleration))
       (sys::poke (elt _refAcceleration i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _refEffort
     (write-long (length _refEffort) s)
     (dotimes (i (length _refEffort))
       (sys::poke (elt _refEffort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _current
     (write-long (length _current) s)
     (dotimes (i (length _current))
       (sys::poke (elt _current i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _velocity
     (write-long (length _velocity) s)
     (dotimes (i (length _velocity))
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _outConvInVelocity
     (write-long (length _outConvInVelocity) s)
     (dotimes (i (length _outConvInVelocity))
       (sys::poke (elt _outConvInVelocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _acceleration
     (write-long (length _acceleration) s)
     (dotimes (i (length _acceleration))
       (sys::poke (elt _acceleration i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _outConvInAcceleration
     (write-long (length _outConvInAcceleration) s)
     (dotimes (i (length _outConvInAcceleration))
       (sys::poke (elt _outConvInAcceleration i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _effort
     (write-long (length _effort) s)
     (dotimes (i (length _effort))
       (sys::poke (elt _effort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _temperature
     (write-long (length _temperature) s)
     (dotimes (i (length _temperature))
       (sys::poke (elt _temperature i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _general_0
     (write-long (length _general_0) s)
     (dotimes (i (length _general_0))
       (sys::poke (elt _general_0 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _general_1
     (write-long (length _general_1) s)
     (dotimes (i (length _general_1))
       (sys::poke (elt _general_1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _general_2
     (write-long (length _general_2) s)
     (dotimes (i (length _general_2))
       (sys::poke (elt _general_2 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _general_3
     (write-long (length _general_3) s)
     (dotimes (i (length _general_3))
       (sys::poke (elt _general_3 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; uint64 _hostTimeStamp
     
#+(or :alpha :irix6 :x86_64)
      (setf _hostTimeStamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _hostTimeStamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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
   ;; uint32[] _type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _type (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _type i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _comStatus
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _comStatus (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _comStatus i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _systemMode
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _systemMode (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _systemMode i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _ctrlMode
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ctrlMode (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ctrlMode i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint64[] _errorWarningStatus
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _errorWarningStatus (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _errorWarningStatus i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _errorWarningStatus i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; uint32[] _trjStatus
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trjStatus (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _trjStatus i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _trjViaRemain
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trjViaRemain (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _trjViaRemain i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _refCurrent
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _refCurrent (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _refCurrent i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _refPosition
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _refPosition (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _refPosition i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _refVelocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _refVelocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _refVelocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _refAcceleration
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _refAcceleration (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _refAcceleration i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _refEffort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _refEffort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _refEffort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _current
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _current i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _outConvInVelocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _outConvInVelocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _outConvInVelocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _acceleration
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acceleration (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acceleration i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _outConvInAcceleration
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _outConvInAcceleration (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _outConvInAcceleration i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _effort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _temperature
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _temperature (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _temperature i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _general_0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _general_0 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _general_0 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _general_1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _general_1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _general_1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _general_2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _general_2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _general_2 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _general_3
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _general_3 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _general_3 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get torobo_msgs::ToroboJointState :md5sum-) "a5d3c515466b817694ef73e566496757")
(setf (get torobo_msgs::ToroboJointState :datatype-) "torobo_msgs/ToroboJointState")
(setf (get torobo_msgs::ToroboJointState :definition-)
      "Header header

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



(provide :torobo_msgs/ToroboJointState "a5d3c515466b817694ef73e566496757")


