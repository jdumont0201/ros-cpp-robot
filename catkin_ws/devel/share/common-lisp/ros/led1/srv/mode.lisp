; Auto-generated. Do not edit!


(cl:in-package led1-srv)


;//! \htmlinclude mode-request.msg.html

(cl:defclass <mode-request> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass mode-request (<mode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name led1-srv:<mode-request> is deprecated: use led1-srv:mode-request instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <mode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader led1-srv:status-val is deprecated.  Use led1-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mode-request>) ostream)
  "Serializes a message object of type '<mode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mode-request>) istream)
  "Deserializes a message object of type '<mode-request>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mode-request>)))
  "Returns string type for a service object of type '<mode-request>"
  "led1/modeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mode-request)))
  "Returns string type for a service object of type 'mode-request"
  "led1/modeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mode-request>)))
  "Returns md5sum for a message object of type '<mode-request>"
  "d7905a69a29ab5417e659090a623ca63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mode-request)))
  "Returns md5sum for a message object of type 'mode-request"
  "d7905a69a29ab5417e659090a623ca63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mode-request>)))
  "Returns full string definition for message of type '<mode-request>"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mode-request)))
  "Returns full string definition for message of type 'mode-request"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mode-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'mode-request
    (cl:cons ':status (status msg))
))
;//! \htmlinclude mode-response.msg.html

(cl:defclass <mode-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:string
    :initform ""))
)

(cl:defclass mode-response (<mode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name led1-srv:<mode-response> is deprecated: use led1-srv:mode-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <mode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader led1-srv:res-val is deprecated.  Use led1-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mode-response>) ostream)
  "Serializes a message object of type '<mode-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'res))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'res))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mode-response>) istream)
  "Deserializes a message object of type '<mode-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mode-response>)))
  "Returns string type for a service object of type '<mode-response>"
  "led1/modeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mode-response)))
  "Returns string type for a service object of type 'mode-response"
  "led1/modeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mode-response>)))
  "Returns md5sum for a message object of type '<mode-response>"
  "d7905a69a29ab5417e659090a623ca63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mode-response)))
  "Returns md5sum for a message object of type 'mode-response"
  "d7905a69a29ab5417e659090a623ca63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mode-response>)))
  "Returns full string definition for message of type '<mode-response>"
  (cl:format cl:nil "string res~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mode-response)))
  "Returns full string definition for message of type 'mode-response"
  (cl:format cl:nil "string res~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mode-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'res))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'mode-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'mode)))
  'mode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'mode)))
  'mode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mode)))
  "Returns string type for a service object of type '<mode>"
  "led1/mode")