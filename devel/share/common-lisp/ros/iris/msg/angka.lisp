; Auto-generated. Do not edit!


(cl:in-package iris-msg)


;//! \htmlinclude angka.msg.html

(cl:defclass <angka> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:fixnum
    :initform 0))
)

(cl:defclass angka (<angka>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <angka>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'angka)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iris-msg:<angka> is deprecated: use iris-msg:angka instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <angka>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iris-msg:number-val is deprecated.  Use iris-msg:number instead.")
  (number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <angka>) ostream)
  "Serializes a message object of type '<angka>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <angka>) istream)
  "Deserializes a message object of type '<angka>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<angka>)))
  "Returns string type for a message object of type '<angka>"
  "iris/angka")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'angka)))
  "Returns string type for a message object of type 'angka"
  "iris/angka")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<angka>)))
  "Returns md5sum for a message object of type '<angka>"
  "29e94f7568510a2f9241abcc8f191b4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'angka)))
  "Returns md5sum for a message object of type 'angka"
  "29e94f7568510a2f9241abcc8f191b4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<angka>)))
  "Returns full string definition for message of type '<angka>"
  (cl:format cl:nil "uint8 number~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'angka)))
  "Returns full string definition for message of type 'angka"
  (cl:format cl:nil "uint8 number~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <angka>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <angka>))
  "Converts a ROS message object to a list"
  (cl:list 'angka
    (cl:cons ':number (number msg))
))
