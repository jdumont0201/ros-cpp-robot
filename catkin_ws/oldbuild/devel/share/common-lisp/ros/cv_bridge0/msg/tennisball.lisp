; Auto-generated. Do not edit!


(cl:in-package cv_bridge0-msg)


;//! \htmlinclude tennisball.msg.html

(cl:defclass <tennisball> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (yellow
    :reader yellow
    :initarg :yellow
    :type cl:float
    :initform 0.0))
)

(cl:defclass tennisball (<tennisball>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tennisball>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tennisball)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cv_bridge0-msg:<tennisball> is deprecated: use cv_bridge0-msg:tennisball instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <tennisball>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cv_bridge0-msg:x-val is deprecated.  Use cv_bridge0-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <tennisball>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cv_bridge0-msg:y-val is deprecated.  Use cv_bridge0-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'yellow-val :lambda-list '(m))
(cl:defmethod yellow-val ((m <tennisball>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cv_bridge0-msg:yellow-val is deprecated.  Use cv_bridge0-msg:yellow instead.")
  (yellow m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tennisball>) ostream)
  "Serializes a message object of type '<tennisball>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yellow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tennisball>) istream)
  "Deserializes a message object of type '<tennisball>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yellow) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tennisball>)))
  "Returns string type for a message object of type '<tennisball>"
  "cv_bridge0/tennisball")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tennisball)))
  "Returns string type for a message object of type 'tennisball"
  "cv_bridge0/tennisball")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tennisball>)))
  "Returns md5sum for a message object of type '<tennisball>"
  "bdcda111f82f57264f6041cdebbe800e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tennisball)))
  "Returns md5sum for a message object of type 'tennisball"
  "bdcda111f82f57264f6041cdebbe800e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tennisball>)))
  "Returns full string definition for message of type '<tennisball>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 yellow~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tennisball)))
  "Returns full string definition for message of type 'tennisball"
  (cl:format cl:nil "float32 x~%float32 y~%float32 yellow~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tennisball>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tennisball>))
  "Converts a ROS message object to a list"
  (cl:list 'tennisball
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':yellow (yellow msg))
))
