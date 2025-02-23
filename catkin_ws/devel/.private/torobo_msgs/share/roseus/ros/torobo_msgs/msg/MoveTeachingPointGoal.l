;; Auto-generated. Do not edit!


(when (boundp 'torobo_msgs::MoveTeachingPointGoal)
  (if (not (find-package "TOROBO_MSGS"))
    (make-package "TOROBO_MSGS"))
  (shadow 'MoveTeachingPointGoal (find-package "TOROBO_MSGS")))
(unless (find-package "TOROBO_MSGS::MOVETEACHINGPOINTGOAL")
  (make-package "TOROBO_MSGS::MOVETEACHINGPOINTGOAL"))

(in-package "ROS")
;;//! \htmlinclude MoveTeachingPointGoal.msg.html


(defclass torobo_msgs::MoveTeachingPointGoal
  :super ros::object
  :slots (_teachingPointName _transitionTime ))

(defmethod torobo_msgs::MoveTeachingPointGoal
  (:init
   (&key
    ((:teachingPointName __teachingPointName) "")
    ((:transitionTime __transitionTime) 0.0)
    )
   (send-super :init)
   (setq _teachingPointName (string __teachingPointName))
   (setq _transitionTime (float __transitionTime))
   self)
  (:teachingPointName
   (&optional __teachingPointName)
   (if __teachingPointName (setq _teachingPointName __teachingPointName)) _teachingPointName)
  (:transitionTime
   (&optional __transitionTime)
   (if __transitionTime (setq _transitionTime __transitionTime)) _transitionTime)
  (:serialization-length
   ()
   (+
    ;; string _teachingPointName
    4 (length _teachingPointName)
    ;; float64 _transitionTime
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _teachingPointName
       (write-long (length _teachingPointName) s) (princ _teachingPointName s)
     ;; float64 _transitionTime
       (sys::poke _transitionTime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _teachingPointName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _teachingPointName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _transitionTime
     (setq _transitionTime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get torobo_msgs::MoveTeachingPointGoal :md5sum-) "89a7bfc02970fbbaf04fb4fe151a93b1")
(setf (get torobo_msgs::MoveTeachingPointGoal :datatype-) "torobo_msgs/MoveTeachingPointGoal")
(setf (get torobo_msgs::MoveTeachingPointGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Goal
string teachingPointName
float64 transitionTime

")



(provide :torobo_msgs/MoveTeachingPointGoal "89a7bfc02970fbbaf04fb4fe151a93b1")


