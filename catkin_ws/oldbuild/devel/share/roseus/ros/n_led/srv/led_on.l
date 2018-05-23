;; Auto-generated. Do not edit!


(when (boundp 'n_led::led_on)
  (if (not (find-package "N_LED"))
    (make-package "N_LED"))
  (shadow 'led_on (find-package "N_LED")))
(unless (find-package "N_LED::LED_ON")
  (make-package "N_LED::LED_ON"))
(unless (find-package "N_LED::LED_ONREQUEST")
  (make-package "N_LED::LED_ONREQUEST"))
(unless (find-package "N_LED::LED_ONRESPONSE")
  (make-package "N_LED::LED_ONRESPONSE"))

(in-package "ROS")





(defclass n_led::led_onRequest
  :super ros::object
  :slots (_status ))

(defmethod n_led::led_onRequest
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

(defclass n_led::led_onResponse
  :super ros::object
  :slots (_res ))

(defmethod n_led::led_onResponse
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

(defclass n_led::led_on
  :super ros::object
  :slots ())

(setf (get n_led::led_on :md5sum-) "d7905a69a29ab5417e659090a623ca63")
(setf (get n_led::led_on :datatype-) "n_led/led_on")
(setf (get n_led::led_on :request) n_led::led_onRequest)
(setf (get n_led::led_on :response) n_led::led_onResponse)

(defmethod n_led::led_onRequest
  (:response () (instance n_led::led_onResponse :init)))

(setf (get n_led::led_onRequest :md5sum-) "d7905a69a29ab5417e659090a623ca63")
(setf (get n_led::led_onRequest :datatype-) "n_led/led_onRequest")
(setf (get n_led::led_onRequest :definition-)
      "bool status
---
string res

")

(setf (get n_led::led_onResponse :md5sum-) "d7905a69a29ab5417e659090a623ca63")
(setf (get n_led::led_onResponse :datatype-) "n_led/led_onResponse")
(setf (get n_led::led_onResponse :definition-)
      "bool status
---
string res

")



(provide :n_led/led_on "d7905a69a29ab5417e659090a623ca63")


