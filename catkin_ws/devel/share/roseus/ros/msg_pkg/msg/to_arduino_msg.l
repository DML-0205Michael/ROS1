;; Auto-generated. Do not edit!


(when (boundp 'msg_pkg::to_arduino_msg)
  (if (not (find-package "MSG_PKG"))
    (make-package "MSG_PKG"))
  (shadow 'to_arduino_msg (find-package "MSG_PKG")))
(unless (find-package "MSG_PKG::TO_ARDUINO_MSG")
  (make-package "MSG_PKG::TO_ARDUINO_MSG"))

(in-package "ROS")
;;//! \htmlinclude to_arduino_msg.msg.html


(defclass msg_pkg::to_arduino_msg
  :super ros::object
  :slots (_M1_speed _M2_speed _M1_encoder_speed _M2_encoder_speed ))

(defmethod msg_pkg::to_arduino_msg
  (:init
   (&key
    ((:M1_speed __M1_speed) 0.0)
    ((:M2_speed __M2_speed) 0.0)
    ((:M1_encoder_speed __M1_encoder_speed) 0)
    ((:M2_encoder_speed __M2_encoder_speed) 0)
    )
   (send-super :init)
   (setq _M1_speed (float __M1_speed))
   (setq _M2_speed (float __M2_speed))
   (setq _M1_encoder_speed (round __M1_encoder_speed))
   (setq _M2_encoder_speed (round __M2_encoder_speed))
   self)
  (:M1_speed
   (&optional __M1_speed)
   (if __M1_speed (setq _M1_speed __M1_speed)) _M1_speed)
  (:M2_speed
   (&optional __M2_speed)
   (if __M2_speed (setq _M2_speed __M2_speed)) _M2_speed)
  (:M1_encoder_speed
   (&optional __M1_encoder_speed)
   (if __M1_encoder_speed (setq _M1_encoder_speed __M1_encoder_speed)) _M1_encoder_speed)
  (:M2_encoder_speed
   (&optional __M2_encoder_speed)
   (if __M2_encoder_speed (setq _M2_encoder_speed __M2_encoder_speed)) _M2_encoder_speed)
  (:serialization-length
   ()
   (+
    ;; float32 _M1_speed
    4
    ;; float32 _M2_speed
    4
    ;; int32 _M1_encoder_speed
    4
    ;; int32 _M2_encoder_speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _M1_speed
       (sys::poke _M1_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _M2_speed
       (sys::poke _M2_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _M1_encoder_speed
       (write-long _M1_encoder_speed s)
     ;; int32 _M2_encoder_speed
       (write-long _M2_encoder_speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _M1_speed
     (setq _M1_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _M2_speed
     (setq _M2_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _M1_encoder_speed
     (setq _M1_encoder_speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _M2_encoder_speed
     (setq _M2_encoder_speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get msg_pkg::to_arduino_msg :md5sum-) "71a226260b511ec21d1286ef6c684eb7")
(setf (get msg_pkg::to_arduino_msg :datatype-) "msg_pkg/to_arduino_msg")
(setf (get msg_pkg::to_arduino_msg :definition-)
      "float32 M1_speed
float32 M2_speed
int32 M1_encoder_speed
int32 M2_encoder_speed
")



(provide :msg_pkg/to_arduino_msg "71a226260b511ec21d1286ef6c684eb7")


