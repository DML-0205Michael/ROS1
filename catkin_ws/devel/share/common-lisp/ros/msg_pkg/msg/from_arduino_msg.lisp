; Auto-generated. Do not edit!


(cl:in-package msg_pkg-msg)


;//! \htmlinclude from_arduino_msg.msg.html

(cl:defclass <from_arduino_msg> (roslisp-msg-protocol:ros-message)
  ((ax
    :reader ax
    :initarg :ax
    :type cl:float
    :initform 0.0)
   (ay
    :reader ay
    :initarg :ay
    :type cl:float
    :initform 0.0)
   (az
    :reader az
    :initarg :az
    :type cl:float
    :initform 0.0)
   (gx
    :reader gx
    :initarg :gx
    :type cl:float
    :initform 0.0)
   (gy
    :reader gy
    :initarg :gy
    :type cl:float
    :initform 0.0)
   (gz
    :reader gz
    :initarg :gz
    :type cl:float
    :initform 0.0)
   (mx
    :reader mx
    :initarg :mx
    :type cl:float
    :initform 0.0)
   (my
    :reader my
    :initarg :my
    :type cl:float
    :initform 0.0)
   (mz
    :reader mz
    :initarg :mz
    :type cl:float
    :initform 0.0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (encoder1
    :reader encoder1
    :initarg :encoder1
    :type cl:integer
    :initform 0)
   (encoder2
    :reader encoder2
    :initarg :encoder2
    :type cl:integer
    :initform 0))
)

(cl:defclass from_arduino_msg (<from_arduino_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <from_arduino_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'from_arduino_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msg_pkg-msg:<from_arduino_msg> is deprecated: use msg_pkg-msg:from_arduino_msg instead.")))

(cl:ensure-generic-function 'ax-val :lambda-list '(m))
(cl:defmethod ax-val ((m <from_arduino_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-msg:ax-val is deprecated.  Use msg_pkg-msg:ax instead.")
  (ax m))

(cl:ensure-generic-function 'ay-val :lambda-list '(m))
(cl:defmethod ay-val ((m <from_arduino_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-msg:ay-val is deprecated.  Use msg_pkg-msg:ay instead.")
  (ay m))

(cl:ensure-generic-function 'az-val :lambda-list '(m))
(cl:defmethod az-val ((m <from_arduino_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-msg:az-val is deprecated.  Use msg_pkg-msg:az instead.")
  (az m))

(cl:ensure-generic-function 'gx-val :lambda-list '(m))
(cl:defmethod gx-val ((m <from_arduino_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-msg:gx-val is deprecated.  Use msg_pkg-msg:gx instead.")
  (gx m))

(cl:ensure-generic-function 'gy-val :lambda-list '(m))
(cl:defmethod gy-val ((m <from_arduino_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-msg:gy-val is deprecated.  Use msg_pkg-msg:gy instead.")
  (gy m))

(cl:ensure-generic-function 'gz-val :lambda-list '(m))
(cl:defmethod gz-val ((m <from_arduino_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-msg:gz-val is deprecated.  Use msg_pkg-msg:gz instead.")
  (gz m))

(cl:ensure-generic-function 'mx-val :lambda-list '(m))
(cl:defmethod mx-val ((m <from_arduino_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-msg:mx-val is deprecated.  Use msg_pkg-msg:mx instead.")
  (mx m))

(cl:ensure-generic-function 'my-val :lambda-list '(m))
(cl:defmethod my-val ((m <from_arduino_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-msg:my-val is deprecated.  Use msg_pkg-msg:my instead.")
  (my m))

(cl:ensure-generic-function 'mz-val :lambda-list '(m))
(cl:defmethod mz-val ((m <from_arduino_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-msg:mz-val is deprecated.  Use msg_pkg-msg:mz instead.")
  (mz m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <from_arduino_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-msg:roll-val is deprecated.  Use msg_pkg-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <from_arduino_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-msg:pitch-val is deprecated.  Use msg_pkg-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <from_arduino_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-msg:yaw-val is deprecated.  Use msg_pkg-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'encoder1-val :lambda-list '(m))
(cl:defmethod encoder1-val ((m <from_arduino_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-msg:encoder1-val is deprecated.  Use msg_pkg-msg:encoder1 instead.")
  (encoder1 m))

(cl:ensure-generic-function 'encoder2-val :lambda-list '(m))
(cl:defmethod encoder2-val ((m <from_arduino_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-msg:encoder2-val is deprecated.  Use msg_pkg-msg:encoder2 instead.")
  (encoder2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <from_arduino_msg>) ostream)
  "Serializes a message object of type '<from_arduino_msg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'az))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'my))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'encoder1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'encoder2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <from_arduino_msg>) istream)
  "Deserializes a message object of type '<from_arduino_msg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ax) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ay) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'az) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'my) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'encoder1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'encoder2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<from_arduino_msg>)))
  "Returns string type for a message object of type '<from_arduino_msg>"
  "msg_pkg/from_arduino_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'from_arduino_msg)))
  "Returns string type for a message object of type 'from_arduino_msg"
  "msg_pkg/from_arduino_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<from_arduino_msg>)))
  "Returns md5sum for a message object of type '<from_arduino_msg>"
  "db9e644fcaf1f0833ccfae8d80ddb567")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'from_arduino_msg)))
  "Returns md5sum for a message object of type 'from_arduino_msg"
  "db9e644fcaf1f0833ccfae8d80ddb567")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<from_arduino_msg>)))
  "Returns full string definition for message of type '<from_arduino_msg>"
  (cl:format cl:nil "float32 ax~%float32 ay~%float32 az~%float32 gx~%float32 gy~%float32 gz~%float32 mx~%float32 my~%float32 mz~%float32 roll~%float32 pitch~%float32 yaw~%int32 encoder1~%int32 encoder2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'from_arduino_msg)))
  "Returns full string definition for message of type 'from_arduino_msg"
  (cl:format cl:nil "float32 ax~%float32 ay~%float32 az~%float32 gx~%float32 gy~%float32 gz~%float32 mx~%float32 my~%float32 mz~%float32 roll~%float32 pitch~%float32 yaw~%int32 encoder1~%int32 encoder2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <from_arduino_msg>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <from_arduino_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'from_arduino_msg
    (cl:cons ':ax (ax msg))
    (cl:cons ':ay (ay msg))
    (cl:cons ':az (az msg))
    (cl:cons ':gx (gx msg))
    (cl:cons ':gy (gy msg))
    (cl:cons ':gz (gz msg))
    (cl:cons ':mx (mx msg))
    (cl:cons ':my (my msg))
    (cl:cons ':mz (mz msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':encoder1 (encoder1 msg))
    (cl:cons ':encoder2 (encoder2 msg))
))
