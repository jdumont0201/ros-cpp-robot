
(cl:in-package :asdf)

(defsystem "n_led-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "led_on" :depends-on ("_package_led_on"))
    (:file "_package_led_on" :depends-on ("_package"))
  ))