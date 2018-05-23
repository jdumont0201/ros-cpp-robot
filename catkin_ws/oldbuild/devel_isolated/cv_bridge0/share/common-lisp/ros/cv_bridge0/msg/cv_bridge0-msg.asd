
(cl:in-package :asdf)

(defsystem "cv_bridge0-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "tennisball" :depends-on ("_package_tennisball"))
    (:file "_package_tennisball" :depends-on ("_package"))
    (:file "tennisballs" :depends-on ("_package_tennisballs"))
    (:file "_package_tennisballs" :depends-on ("_package"))
  ))