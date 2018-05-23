;; Auto-generated. Do not edit!


(when (boundp 'ledx::mode)
  (if (not (find-package "LEDX"))
    (make-package "LEDX"))
  (shadow 'mode (find-package "LEDX")))
(unless (find-package "LEDX::MODE")
  (make-package "LEDX::MODE"))
(unless (find-package "LEDX::MODEREQUEST")
  (make-package "LEDX::MODEREQUEST"))
(unless (find-package "LEDX::MODERESPONSE")
  (make-package "LEDX::MODERESPONSE"))

(in-package "ROS")





(defclass ledx::modeRequest
  :super ros::object
  :slots (_status _id ))

(defmethod ledx::modeRequest
  (:init
   (&key
    ((:status __status) nil)
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _status __status)
   (setq _id (round __id))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ledx::modeResponse
  :super ros::object
  :slots (_res ))

(defmethod ledx::modeResponse
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

(defclass ledx::mode
  :super ros::object
  :slots ())

(setf (get ledx::mode :md5sum-) "814e642bc814671de4b77b9a585ee0c6")
(setf (get ledx::mode :datatype-) "ledx/mode")
(setf (get ledx::mode :request) ledx::modeRequest)
(setf (get ledx::mode :response) ledx::modeResponse)

(defmethod ledx::modeRequest
  (:response () (instance ledx::modeResponse :init)))

(setf (get ledx::modeRequest :md5sum-) "814e642bc814671de4b77b9a585ee0c6")
(setf (get ledx::modeRequest :datatype-) "ledx/modeRequest")
(setf (get ledx::modeRequest :definition-)
      "bool status
int32 id
---
string res

")

(setf (get ledx::modeResponse :md5sum-) "814e642bc814671de4b77b9a585ee0c6")
(setf (get ledx::modeResponse :datatype-) "ledx/modeResponse")
(setf (get ledx::modeResponse :definition-)
      "bool status
int32 id
---
string res

")



(provide :ledx/mode "814e642bc814671de4b77b9a585ee0c6")


