; Auto-generated. Do not edit!


(cl:in-package msg_pkg-msg)


;//! \htmlinclude to_arduino_msg.msg.html

(cl:defclass <to_arduino_msg> (roslisp-msg-protocol:ros-message)
  ((M1_speed
    :reader M1_speed
    :initarg :M1_speed
    :type cl:float
    :initform 0.0)
   (M2_speed
    :reader M2_speed
    :initarg :M2_speed
    :type cl:float
    :initform 0.0)
   (M1_encoder_speed
    :reader M1_encoder_speed
    :initarg :M1_encoder_speed
    :type cl:integer
    :initform 0)
   (M2_encoder_speed
    :reader M2_encoder_speed
    :initarg :M2_encoder_speed
    :type cl:integer
    :initform 0))
)

(cl:defclass to_arduino_msg (<to_arduino_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <to_arduino_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'to_arduino_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msg_pkg-msg:<to_arduino_msg> is deprecated: use msg_pkg-msg:to_arduino_msg instead.")))

(cl:ensure-generic-function 'M1_speed-val :lambda-list '(m))
(cl:defmethod M1_speed-val ((m <to_arduino_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-msg:M1_speed-val is deprecated.  Use msg_pkg-msg:M1_speed instead.")
  (M1_speed m))

(cl:ensure-generic-function 'M2_speed-val :lambda-list '(m))
(cl:defmethod M2_speed-val ((m <to_arduino_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-msg:M2_speed-val is deprecated.  Use msg_pkg-msg:M2_speed instead.")
  (M2_speed m))

(cl:ensure-generic-function 'M1_encoder_speed-val :lambda-list '(m))
(cl:defmethod M1_encoder_speed-val ((m <to_arduino_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-msg:M1_encoder_speed-val is deprecated.  Use msg_pkg-msg:M1_encoder_speed instead.")
  (M1_encoder_speed m))

(cl:ensure-generic-function 'M2_encoder_speed-val :lambda-list '(m))
(cl:defmethod M2_encoder_speed-val ((m <to_arduino_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-msg:M2_encoder_speed-val is deprecated.  Use msg_pkg-msg:M2_encoder_speed instead.")
  (M2_encoder_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <to_arduino_msg>) ostream)
  "Serializes a message object of type '<to_arduino_msg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'M1_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'M2_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'M1_encoder_speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'M2_encoder_speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <to_arduino_msg>) istream)
  "Deserializes a message object of type '<to_arduino_msg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'M1_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'M2_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'M1_encoder_speed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'M2_encoder_speed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<to_arduino_msg>)))
  "Returns string type for a message object of type '<to_arduino_msg>"
  "msg_pkg/to_arduino_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'to_arduino_msg)))
  "Returns string type for a message object of type 'to_arduino_msg"
  "msg_pkg/to_arduino_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<to_arduino_msg>)))
  "Returns md5sum for a message object of type '<to_arduino_msg>"
  "71a226260b511ec21d1286ef6c684eb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'to_arduino_msg)))
  "Returns md5sum for a message object of type 'to_arduino_msg"
  "71a226260b511ec21d1286ef6c684eb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<to_arduino_msg>)))
  "Returns full string definition for message of type '<to_arduino_msg>"
  (cl:format cl:nil "float32 M1_speed~%float32 M2_speed~%int32 M1_encoder_speed~%int32 M2_encoder_speed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'to_arduino_msg)))
  "Returns full string definition for message of type 'to_arduino_msg"
  (cl:format cl:nil "float32 M1_speed~%float32 M2_speed~%int32 M1_encoder_speed~%int32 M2_encoder_speed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <to_arduino_msg>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <to_arduino_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'to_arduino_msg
    (cl:cons ':M1_speed (M1_speed msg))
    (cl:cons ':M2_speed (M2_speed msg))
    (cl:cons ':M1_encoder_speed (M1_encoder_speed msg))
    (cl:cons ':M2_encoder_speed (M2_encoder_speed msg))
))
