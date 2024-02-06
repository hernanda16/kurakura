;; Auto-generated. Do not edit!


(when (boundp 'iris::angka)
  (if (not (find-package "IRIS"))
    (make-package "IRIS"))
  (shadow 'angka (find-package "IRIS")))
(unless (find-package "IRIS::ANGKA")
  (make-package "IRIS::ANGKA"))

(in-package "ROS")
;;//! \htmlinclude angka.msg.html


(defclass iris::angka
  :super ros::object
  :slots (_number ))

(defmethod iris::angka
  (:init
   (&key
    ((:number __number) 0)
    )
   (send-super :init)
   (setq _number (round __number))
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:serialization-length
   ()
   (+
    ;; uint8 _number
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _number
       (write-byte _number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _number
     (setq _number (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get iris::angka :md5sum-) "29e94f7568510a2f9241abcc8f191b4f")
(setf (get iris::angka :datatype-) "iris/angka")
(setf (get iris::angka :definition-)
      "uint8 number
")



(provide :iris/angka "29e94f7568510a2f9241abcc8f191b4f")


