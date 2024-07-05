;; Auto-generated. Do not edit!


(when (boundp 'msg_pkg::carry)
  (if (not (find-package "MSG_PKG"))
    (make-package "MSG_PKG"))
  (shadow 'carry (find-package "MSG_PKG")))
(unless (find-package "MSG_PKG::CARRY")
  (make-package "MSG_PKG::CARRY"))

(in-package "ROS")
;;//! \htmlinclude carry.msg.html


(defclass msg_pkg::carry
  :super ros::object
  :slots (_grade _star _data ))

(defmethod msg_pkg::carry
  (:init
   (&key
    ((:grade __grade) "")
    ((:star __star) 0)
    ((:data __data) "")
    )
   (send-super :init)
   (setq _grade (string __grade))
   (setq _star (round __star))
   (setq _data (string __data))
   self)
  (:grade
   (&optional __grade)
   (if __grade (setq _grade __grade)) _grade)
  (:star
   (&optional __star)
   (if __star (setq _star __star)) _star)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _grade
    4 (length _grade)
    ;; int64 _star
    8
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _grade
       (write-long (length _grade) s) (princ _grade s)
     ;; int64 _star
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _star (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _star) (= (length (_star . bv)) 2)) ;; bignum
              (write-long (ash (elt (_star . bv) 0) 0) s)
              (write-long (ash (elt (_star . bv) 1) -1) s))
             ((and (class _star) (= (length (_star . bv)) 1)) ;; big1
              (write-long (elt (_star . bv) 0) s)
              (write-long (if (>= _star 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _star s)(write-long (if (>= _star 0) 0 #xffffffff) s)))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _grade
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _grade (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _star
#+(or :alpha :irix6 :x86_64)
      (setf _star (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _star (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get msg_pkg::carry :md5sum-) "de2ab20ee92a64b24367da18405f9c78")
(setf (get msg_pkg::carry :datatype-) "msg_pkg/carry")
(setf (get msg_pkg::carry :definition-)
      "string grade
int64 star
string data
")



(provide :msg_pkg/carry "de2ab20ee92a64b24367da18405f9c78")


