;; Auto-generated. Do not edit!


(when (boundp 'cv_bridge0::tennisballs)
  (if (not (find-package "CV_BRIDGE0"))
    (make-package "CV_BRIDGE0"))
  (shadow 'tennisballs (find-package "CV_BRIDGE0")))
(unless (find-package "CV_BRIDGE0::TENNISBALLS")
  (make-package "CV_BRIDGE0::TENNISBALLS"))

(in-package "ROS")
;;//! \htmlinclude tennisballs.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cv_bridge0::tennisballs
  :super ros::object
  :slots (_header _balls ))

(defmethod cv_bridge0::tennisballs
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:balls __balls) (let (r) (dotimes (i 0) (push (instance cv_bridge0::tennisball :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _balls __balls)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:balls
   (&rest __balls)
   (if (keywordp (car __balls))
       (send* _balls __balls)
     (progn
       (if __balls (setq _balls (car __balls)))
       _balls)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cv_bridge0/tennisball[] _balls
    (apply #'+ (send-all _balls :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cv_bridge0/tennisball[] _balls
     (write-long (length _balls) s)
     (dolist (elem _balls)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cv_bridge0/tennisball[] _balls
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _balls (let (r) (dotimes (i n) (push (instance cv_bridge0::tennisball :init) r)) r))
     (dolist (elem- _balls)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cv_bridge0::tennisballs :md5sum-) "059ef9e5c20be95021f1e65fd5fef3c5")
(setf (get cv_bridge0::tennisballs :datatype-) "cv_bridge0/tennisballs")
(setf (get cv_bridge0::tennisballs :definition-)
      "std_msgs/Header header
cv_bridge0/tennisball[] balls

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
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: cv_bridge0/tennisball
float32 x
float32 y
float32 yellow

")



(provide :cv_bridge0/tennisballs "059ef9e5c20be95021f1e65fd5fef3c5")


