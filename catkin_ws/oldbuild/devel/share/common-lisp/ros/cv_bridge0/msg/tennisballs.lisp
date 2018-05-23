; Auto-generated. Do not edit!


(cl:in-package cv_bridge0-msg)


;//! \htmlinclude tennisballs.msg.html

(cl:defclass <tennisballs> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (balls
    :reader balls
    :initarg :balls
    :type (cl:vector cv_bridge0-msg:tennisball)
   :initform (cl:make-array 0 :element-type 'cv_bridge0-msg:tennisball :initial-element (cl:make-instance 'cv_bridge0-msg:tennisball))))
)

(cl:defclass tennisballs (<tennisballs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tennisballs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tennisballs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cv_bridge0-msg:<tennisballs> is deprecated: use cv_bridge0-msg:tennisballs instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <tennisballs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cv_bridge0-msg:header-val is deprecated.  Use cv_bridge0-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'balls-val :lambda-list '(m))
(cl:defmethod balls-val ((m <tennisballs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cv_bridge0-msg:balls-val is deprecated.  Use cv_bridge0-msg:balls instead.")
  (balls m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tennisballs>) ostream)
  "Serializes a message object of type '<tennisballs>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'balls))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'balls))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tennisballs>) istream)
  "Deserializes a message object of type '<tennisballs>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'balls) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'balls)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cv_bridge0-msg:tennisball))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tennisballs>)))
  "Returns string type for a message object of type '<tennisballs>"
  "cv_bridge0/tennisballs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tennisballs)))
  "Returns string type for a message object of type 'tennisballs"
  "cv_bridge0/tennisballs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tennisballs>)))
  "Returns md5sum for a message object of type '<tennisballs>"
  "059ef9e5c20be95021f1e65fd5fef3c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tennisballs)))
  "Returns md5sum for a message object of type 'tennisballs"
  "059ef9e5c20be95021f1e65fd5fef3c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tennisballs>)))
  "Returns full string definition for message of type '<tennisballs>"
  (cl:format cl:nil "std_msgs/Header header~%cv_bridge0/tennisball[] balls~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cv_bridge0/tennisball~%float32 x~%float32 y~%float32 yellow~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tennisballs)))
  "Returns full string definition for message of type 'tennisballs"
  (cl:format cl:nil "std_msgs/Header header~%cv_bridge0/tennisball[] balls~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cv_bridge0/tennisball~%float32 x~%float32 y~%float32 yellow~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tennisballs>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'balls) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tennisballs>))
  "Converts a ROS message object to a list"
  (cl:list 'tennisballs
    (cl:cons ':header (header msg))
    (cl:cons ':balls (balls msg))
))
