; Auto-generated. Do not edit!


(cl:in-package n_led-srv)


;//! \htmlinclude led_on-request.msg.html

(cl:defclass <led_on-request> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass led_on-request (<led_on-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <led_on-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'led_on-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name n_led-srv:<led_on-request> is deprecated: use n_led-srv:led_on-request instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <led_on-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader n_led-srv:status-val is deprecated.  Use n_led-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <led_on-request>) ostream)
  "Serializes a message object of type '<led_on-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <led_on-request>) istream)
  "Deserializes a message object of type '<led_on-request>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<led_on-request>)))
  "Returns string type for a service object of type '<led_on-request>"
  "n_led/led_onRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'led_on-request)))
  "Returns string type for a service object of type 'led_on-request"
  "n_led/led_onRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<led_on-request>)))
  "Returns md5sum for a message object of type '<led_on-request>"
  "d7905a69a29ab5417e659090a623ca63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'led_on-request)))
  "Returns md5sum for a message object of type 'led_on-request"
  "d7905a69a29ab5417e659090a623ca63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<led_on-request>)))
  "Returns full string definition for message of type '<led_on-request>"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'led_on-request)))
  "Returns full string definition for message of type 'led_on-request"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <led_on-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <led_on-request>))
  "Converts a ROS message object to a list"
  (cl:list 'led_on-request
    (cl:cons ':status (status msg))
))
;//! \htmlinclude led_on-response.msg.html

(cl:defclass <led_on-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:string
    :initform ""))
)

(cl:defclass led_on-response (<led_on-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <led_on-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'led_on-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name n_led-srv:<led_on-response> is deprecated: use n_led-srv:led_on-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <led_on-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader n_led-srv:res-val is deprecated.  Use n_led-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <led_on-response>) ostream)
  "Serializes a message object of type '<led_on-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'res))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'res))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <led_on-response>) istream)
  "Deserializes a message object of type '<led_on-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'res) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<led_on-response>)))
  "Returns string type for a service object of type '<led_on-response>"
  "n_led/led_onResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'led_on-response)))
  "Returns string type for a service object of type 'led_on-response"
  "n_led/led_onResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<led_on-response>)))
  "Returns md5sum for a message object of type '<led_on-response>"
  "d7905a69a29ab5417e659090a623ca63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'led_on-response)))
  "Returns md5sum for a message object of type 'led_on-response"
  "d7905a69a29ab5417e659090a623ca63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<led_on-response>)))
  "Returns full string definition for message of type '<led_on-response>"
  (cl:format cl:nil "string res~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'led_on-response)))
  "Returns full string definition for message of type 'led_on-response"
  (cl:format cl:nil "string res~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <led_on-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'res))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <led_on-response>))
  "Converts a ROS message object to a list"
  (cl:list 'led_on-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'led_on)))
  'led_on-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'led_on)))
  'led_on-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'led_on)))
  "Returns string type for a service object of type '<led_on>"
  "n_led/led_on")