;; Auto-generated. Do not edit!


(when (boundp 'msg_pkg::from_arduino_msg)
  (if (not (find-package "MSG_PKG"))
    (make-package "MSG_PKG"))
  (shadow 'from_arduino_msg (find-package "MSG_PKG")))
(unless (find-package "MSG_PKG::FROM_ARDUINO_MSG")
  (make-package "MSG_PKG::FROM_ARDUINO_MSG"))

(in-package "ROS")
;;//! \htmlinclude from_arduino_msg.msg.html


(defclass msg_pkg::from_arduino_msg
  :super ros::object
  :slots (_ax _ay _az _gx _gy _gz _mx _my _mz _roll _pitch _yaw _encoder1 _encoder2 ))

(defmethod msg_pkg::from_arduino_msg
  (:init
   (&key
    ((:ax __ax) 0.0)
    ((:ay __ay) 0.0)
    ((:az __az) 0.0)
    ((:gx __gx) 0.0)
    ((:gy __gy) 0.0)
    ((:gz __gz) 0.0)
    ((:mx __mx) 0.0)
    ((:my __my) 0.0)
    ((:mz __mz) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:encoder1 __encoder1) 0)
    ((:encoder2 __encoder2) 0)
    )
   (send-super :init)
   (setq _ax (float __ax))
   (setq _ay (float __ay))
   (setq _az (float __az))
   (setq _gx (float __gx))
   (setq _gy (float __gy))
   (setq _gz (float __gz))
   (setq _mx (float __mx))
   (setq _my (float __my))
   (setq _mz (float __mz))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _encoder1 (round __encoder1))
   (setq _encoder2 (round __encoder2))
   self)
  (:ax
   (&optional __ax)
   (if __ax (setq _ax __ax)) _ax)
  (:ay
   (&optional __ay)
   (if __ay (setq _ay __ay)) _ay)
  (:az
   (&optional __az)
   (if __az (setq _az __az)) _az)
  (:gx
   (&optional __gx)
   (if __gx (setq _gx __gx)) _gx)
  (:gy
   (&optional __gy)
   (if __gy (setq _gy __gy)) _gy)
  (:gz
   (&optional __gz)
   (if __gz (setq _gz __gz)) _gz)
  (:mx
   (&optional __mx)
   (if __mx (setq _mx __mx)) _mx)
  (:my
   (&optional __my)
   (if __my (setq _my __my)) _my)
  (:mz
   (&optional __mz)
   (if __mz (setq _mz __mz)) _mz)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:encoder1
   (&optional __encoder1)
   (if __encoder1 (setq _encoder1 __encoder1)) _encoder1)
  (:encoder2
   (&optional __encoder2)
   (if __encoder2 (setq _encoder2 __encoder2)) _encoder2)
  (:serialization-length
   ()
   (+
    ;; float32 _ax
    4
    ;; float32 _ay
    4
    ;; float32 _az
    4
    ;; float32 _gx
    4
    ;; float32 _gy
    4
    ;; float32 _gz
    4
    ;; float32 _mx
    4
    ;; float32 _my
    4
    ;; float32 _mz
    4
    ;; float32 _roll
    4
    ;; float32 _pitch
    4
    ;; float32 _yaw
    4
    ;; int32 _encoder1
    4
    ;; int32 _encoder2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _ax
       (sys::poke _ax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ay
       (sys::poke _ay (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _az
       (sys::poke _az (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gx
       (sys::poke _gx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gy
       (sys::poke _gy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gz
       (sys::poke _gz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mx
       (sys::poke _mx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _my
       (sys::poke _my (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mz
       (sys::poke _mz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _encoder1
       (write-long _encoder1 s)
     ;; int32 _encoder2
       (write-long _encoder2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _ax
     (setq _ax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ay
     (setq _ay (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _az
     (setq _az (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gx
     (setq _gx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gy
     (setq _gy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gz
     (setq _gz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mx
     (setq _mx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _my
     (setq _my (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mz
     (setq _mz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _encoder1
     (setq _encoder1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _encoder2
     (setq _encoder2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get msg_pkg::from_arduino_msg :md5sum-) "db9e644fcaf1f0833ccfae8d80ddb567")
(setf (get msg_pkg::from_arduino_msg :datatype-) "msg_pkg/from_arduino_msg")
(setf (get msg_pkg::from_arduino_msg :definition-)
      "float32 ax
float32 ay
float32 az
float32 gx
float32 gy
float32 gz
float32 mx
float32 my
float32 mz
float32 roll
float32 pitch
float32 yaw
int32 encoder1
int32 encoder2

")



(provide :msg_pkg/from_arduino_msg "db9e644fcaf1f0833ccfae8d80ddb567")


