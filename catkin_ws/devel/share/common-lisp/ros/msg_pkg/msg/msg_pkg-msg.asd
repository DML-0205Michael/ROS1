
(cl:in-package :asdf)

(defsystem "msg_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "carry" :depends-on ("_package_carry"))
    (:file "_package_carry" :depends-on ("_package"))
    (:file "from_arduino_msg" :depends-on ("_package_from_arduino_msg"))
    (:file "_package_from_arduino_msg" :depends-on ("_package"))
    (:file "to_arduino_msg" :depends-on ("_package_to_arduino_msg"))
    (:file "_package_to_arduino_msg" :depends-on ("_package"))
  ))