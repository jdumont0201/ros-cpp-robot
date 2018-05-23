;; Auto-generated. Do not edit!


(when (boundp 'cv_bridge0::tennisball)
  (if (not (find-package "CV_BRIDGE0"))
    (make-package "CV_BRIDGE0"))
  (shadow 'tennisball (find-package "CV_BRIDGE0")))
(unless (find-package "CV_BRIDGE0::TENNISBALL")
  (make-package "CV_BRIDGE0::TENNISBALL"))

(in-package "ROS")
;;//! \htmlinclude tennisball.msg.html


(defclass cv_bridge0::tennisball
  :super ros::object
  :slots (_x _y _yellow ))

(defmethod cv_bridge0::tennisball
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:yellow __yellow) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _yellow (float __yellow))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:yellow
   (&optional __yellow)
   (if __yellow (setq _yellow __yellow)) _yellow)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _yellow
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yellow
       (sys::poke _yellow (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yellow
     (setq _yellow (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cv_bridge0::tennisball :md5sum-) "bdcda111f82f57264f6041cdebbe800e")
(setf (get cv_bridge0::tennisball :datatype-) "cv_bridge0/tennisball")
(setf (get cv_bridge0::tennisball :definition-)
      "float32 x
float32 y
float32 yellow

")



(provide :cv_bridge0/tennisball "bdcda111f82f57264f6041cdebbe800e")


