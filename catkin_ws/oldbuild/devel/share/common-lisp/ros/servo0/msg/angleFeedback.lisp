; Auto-generated. Do not edit!


(cl:in-package servo0-msg)


;//! \htmlinclude angleFeedback.msg.html

(cl:defclass <angleFeedback> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:float
    :initform 0.0))
)

(cl:defclass angleFeedback (<angleFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <angleFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'angleFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo0-msg:<angleFeedback> is deprecated: use servo0-msg:angleFeedback instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <angleFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo0-msg:feedback-val is deprecated.  Use servo0-msg:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <angleFeedback>) ostream)
  "Serializes a message object of type '<angleFeedback>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <angleFeedback>) istream)
  "Deserializes a message object of type '<angleFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'feedback) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<angleFeedback>)))
  "Returns string type for a message object of type '<angleFeedback>"
  "servo0/angleFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'angleFeedback)))
  "Returns string type for a message object of type 'angleFeedback"
  "servo0/angleFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<angleFeedback>)))
  "Returns md5sum for a message object of type '<angleFeedback>"
  "d90953f904aa7b8e8d8b4f90a196f18f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'angleFeedback)))
  "Returns md5sum for a message object of type 'angleFeedback"
  "d90953f904aa7b8e8d8b4f90a196f18f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<angleFeedback>)))
  "Returns full string definition for message of type '<angleFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float32 feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'angleFeedback)))
  "Returns full string definition for message of type 'angleFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float32 feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <angleFeedback>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <angleFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'angleFeedback
    (cl:cons ':feedback (feedback msg))
))
