;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::SetPayloadParam)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'SetPayloadParam (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::SETPAYLOADPARAM")
  (make-package "TOROBO_MSGS::SETPAYLOADPARAM"))
(unless (find-package "TOROBO_MSGS::SETPAYLOADPARAMREQUEST")
  (make-package "TOROBO_MSGS::SETPAYLOADPARAMREQUEST"))
(unless (find-package "TOROBO_MSGS::SETPAYLOADPARAMRESPONSE")
  (make-package "TOROBO_MSGS::SETPAYLOADPARAMRESPONSE"))

(in-package "ROS")





(defclass torobo_msgs::SetPayloadParamRequest
  :super ros::object
  :slots (_name _mass _com _inertiaElem ))

(defmethod torobo_msgs::SetPayloadParamRequest
  (:init
   (&key
    ((:name __name) "")
    ((:mass __mass) 0.0)
    ((:com __com) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:inertiaElem __inertiaElem) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _mass (float __mass))
   (setq _com __com)
   (setq _inertiaElem __inertiaElem)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:mass
   (&optional __mass)
   (if __mass (setq _mass __mass)) _mass)
  (:com
   (&optional __com)
   (if __com (setq _com __com)) _com)
  (:inertiaElem
   (&optional __inertiaElem)
   (if __inertiaElem (setq _inertiaElem __inertiaElem)) _inertiaElem)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _mass
    8
    ;; float64[] _com
    (* 8    (length _com)) 4
    ;; float64[] _inertiaElem
    (* 8    (length _inertiaElem)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _mass
       (sys::poke _mass (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _com
     (write-long (length _com) s)
     (dotimes (i (length _com))
       (sys::poke (elt _com i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _inertiaElem
     (write-long (length _inertiaElem) s)
     (dotimes (i (length _inertiaElem))
       (sys::poke (elt _inertiaElem i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _mass
     (setq _mass (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _com
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _com (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _com i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _inertiaElem
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _inertiaElem (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _inertiaElem i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass torobo_msgs::SetPayloadParamResponse
  :super ros::object
  :slots (_success ))

(defmethod torobo_msgs::SetPayloadParamResponse
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

(defclass torobo_msgs::SetPayloadParam
  :super ros::object
  :slots ())

(setf (get torobo_msgs::SetPayloadParam :md5sum-) "18444bf482dd4c9fb50d4df61828e83f")
(setf (get torobo_msgs::SetPayloadParam :datatype-) "torobo_msgs/SetPayloadParam")
(setf (get torobo_msgs::SetPayloadParam :request) torobo_msgs::SetPayloadParamRequest)
(setf (get torobo_msgs::SetPayloadParam :response) torobo_msgs::SetPayloadParamResponse)

(defmethod torobo_msgs::SetPayloadParamRequest
  (:response () (instance torobo_msgs::SetPayloadParamResponse :init)))

(setf (get torobo_msgs::SetPayloadParamRequest :md5sum-) "18444bf482dd4c9fb50d4df61828e83f")
(setf (get torobo_msgs::SetPayloadParamRequest :datatype-) "torobo_msgs/SetPayloadParamRequest")
(setf (get torobo_msgs::SetPayloadParamRequest :definition-)
      "string name
float64 mass
float64[] com            # x, y, z
float64[] inertiaElem    # ixx, ixy, ixz, iyy, iyz, izz
---
bool success


")

(setf (get torobo_msgs::SetPayloadParamResponse :md5sum-) "18444bf482dd4c9fb50d4df61828e83f")
(setf (get torobo_msgs::SetPayloadParamResponse :datatype-) "torobo_msgs/SetPayloadParamResponse")
(setf (get torobo_msgs::SetPayloadParamResponse :definition-)
      "string name
float64 mass
float64[] com            # x, y, z
float64[] inertiaElem    # ixx, ixy, ixz, iyy, iyz, izz
---
bool success


")



(provide :torobo_msgs/SetPayloadParam "18444bf482dd4c9fb50d4df61828e83f")


