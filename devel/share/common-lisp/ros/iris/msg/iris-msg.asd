
(cl:in-package :asdf)

(defsystem "iris-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "angka" :depends-on ("_package_angka"))
    (:file "_package_angka" :depends-on ("_package"))
  ))