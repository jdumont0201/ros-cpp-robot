
(cl:in-package :asdf)

(defsystem "servo0-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "angleAction" :depends-on ("_package_angleAction"))
    (:file "_package_angleAction" :depends-on ("_package"))
    (:file "angleActionFeedback" :depends-on ("_package_angleActionFeedback"))
    (:file "_package_angleActionFeedback" :depends-on ("_package"))
    (:file "angleActionGoal" :depends-on ("_package_angleActionGoal"))
    (:file "_package_angleActionGoal" :depends-on ("_package"))
    (:file "angleActionResult" :depends-on ("_package_angleActionResult"))
    (:file "_package_angleActionResult" :depends-on ("_package"))
    (:file "angleFeedback" :depends-on ("_package_angleFeedback"))
    (:file "_package_angleFeedback" :depends-on ("_package"))
    (:file "angleGoal" :depends-on ("_package_angleGoal"))
    (:file "_package_angleGoal" :depends-on ("_package"))
    (:file "angleResult" :depends-on ("_package_angleResult"))
    (:file "_package_angleResult" :depends-on ("_package"))
  ))