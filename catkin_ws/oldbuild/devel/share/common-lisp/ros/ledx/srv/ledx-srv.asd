
(cl:in-package :asdf)

(defsystem "ledx-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "mode" :depends-on ("_package_mode"))
    (:file "_package_mode" :depends-on ("_package"))
  ))