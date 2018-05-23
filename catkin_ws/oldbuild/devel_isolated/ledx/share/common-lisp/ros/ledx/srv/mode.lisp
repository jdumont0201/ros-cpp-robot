; Auto-generated. Do not edit!


(cl:in-package ledx-srv)


;//! \htmlinclude mode-request.msg.html

(cl:defclass <mode-request> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil)
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass mode-request (<mode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ledx-srv:<mode-request> is deprecated: use ledx-srv:mode-request instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <mode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ledx-srv:status-val is deprecated.  Use ledx-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <mode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ledx-srv:id-val is deprecated.  Use ledx-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mode-request>) ostream)
  "Serializes a message object of type '<mode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mode-request>) istream)
  "Deserializes a message object of type '<mode-request>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mode-request>)))
  "Returns string type for a service object of type '<mode-request>"
  "ledx/modeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mode-request)))
  "Returns string type for a service object of type 'mode-request"
  "ledx/modeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mode-request>)))
  "Returns md5sum for a message object of type '<mode-request>"
  "814e642bc814671de4b77b9a585ee0c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mode-request)))
  "Returns md5sum for a message object of type 'mode-request"
  "814e642bc814671de4b77b9a585ee0c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mode-request>)))
  "Returns full string definition for message of type '<mode-request>"
  (cl:format cl:nil "bool status~%int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mode-request)))
  "Returns full string definition for message of type 'mode-request"
  (cl:format cl:nil "bool status~%int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mode-request>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'mode-request
    (cl:cons ':status (status msg))
    (cl:cons ':id (id msg))
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
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ledx-srv:<mode-response> is deprecated: use ledx-srv:mode-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <mode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ledx-srv:res-val is deprecated.  Use ledx-srv:res instead.")
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
  "ledx/modeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mode-response)))
  "Returns string type for a service object of type 'mode-response"
  "ledx/modeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mode-response>)))
  "Returns md5sum for a message object of type '<mode-response>"
  "814e642bc814671de4b77b9a585ee0c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mode-response)))
  "Returns md5sum for a message object of type 'mode-response"
  "814e642bc814671de4b77b9a585ee0c6")
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
  "ledx/mode")