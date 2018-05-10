;; Auto-generated. Do not edit!


(when (boundp 'led1::mode)
  (if (not (find-package "LED1"))
    (make-package "LED1"))
  (shadow 'mode (find-package "LED1")))
(unless (find-package "LED1::MODE")
  (make-package "LED1::MODE"))
(unless (find-package "LED1::MODEREQUEST")
  (make-package "LED1::MODEREQUEST"))
(unless (find-package "LED1::MODERESPONSE")
  (make-package "LED1::MODERESPONSE"))

(in-package "ROS")





(defclass led1::modeRequest
  :super ros::object
  :slots (_status ))

(defmethod led1::modeRequest
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

(defclass led1::modeResponse
  :super ros::object
  :slots (_res ))

(defmethod led1::modeResponse
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

(defclass led1::mode
  :super ros::object
  :slots ())

(setf (get led1::mode :md5sum-) "d7905a69a29ab5417e659090a623ca63")
(setf (get led1::mode :datatype-) "led1/mode")
(setf (get led1::mode :request) led1::modeRequest)
(setf (get led1::mode :response) led1::modeResponse)

(defmethod led1::modeRequest
  (:response () (instance led1::modeResponse :init)))

(setf (get led1::modeRequest :md5sum-) "d7905a69a29ab5417e659090a623ca63")
(setf (get led1::modeRequest :datatype-) "led1/modeRequest")
(setf (get led1::modeRequest :definition-)
      "bool status
---
string res

")

(setf (get led1::modeResponse :md5sum-) "d7905a69a29ab5417e659090a623ca63")
(setf (get led1::modeResponse :datatype-) "led1/modeResponse")
(setf (get led1::modeResponse :definition-)
      "bool status
---
string res

")



(provide :led1/mode "d7905a69a29ab5417e659090a623ca63")


