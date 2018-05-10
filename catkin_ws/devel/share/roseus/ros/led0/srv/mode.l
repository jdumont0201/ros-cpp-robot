;; Auto-generated. Do not edit!


(when (boundp 'led0::mode)
  (if (not (find-package "LED0"))
    (make-package "LED0"))
  (shadow 'mode (find-package "LED0")))
(unless (find-package "LED0::MODE")
  (make-package "LED0::MODE"))
(unless (find-package "LED0::MODEREQUEST")
  (make-package "LED0::MODEREQUEST"))
(unless (find-package "LED0::MODERESPONSE")
  (make-package "LED0::MODERESPONSE"))

(in-package "ROS")





(defclass led0::modeRequest
  :super ros::object
  :slots (_status ))

(defmethod led0::modeRequest
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass led0::modeResponse
  :super ros::object
  :slots (_res ))

(defmethod led0::modeResponse
  (:init
   (&key
    ((:res __res) "")
    )
   (send-super :init)
   (setq _res (string __res))
   self)
  (:res
   (&optional __res)
   (if __res (setq _res __res)) _res)
  (:serialization-length
   ()
   (+
    ;; string _res
    4 (length _res)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _res
       (write-long (length _res) s) (princ _res s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _res
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _res (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass led0::mode
  :super ros::object
  :slots ())

(setf (get led0::mode :md5sum-) "d7905a69a29ab5417e659090a623ca63")
(setf (get led0::mode :datatype-) "led0/mode")
(setf (get led0::mode :request) led0::modeRequest)
(setf (get led0::mode :response) led0::modeResponse)

(defmethod led0::modeRequest
  (:response () (instance led0::modeResponse :init)))

(setf (get led0::modeRequest :md5sum-) "d7905a69a29ab5417e659090a623ca63")
(setf (get led0::modeRequest :datatype-) "led0/modeRequest")
(setf (get led0::modeRequest :definition-)
      "bool status
---
string res

")

(setf (get led0::modeResponse :md5sum-) "d7905a69a29ab5417e659090a623ca63")
(setf (get led0::modeResponse :datatype-) "led0/modeResponse")
(setf (get led0::modeResponse :definition-)
      "bool status
---
string res

")



(provide :led0/mode "d7905a69a29ab5417e659090a623ca63")


