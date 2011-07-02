(in-package :cl-funcpar)

(defun par-mapcar (fn sequence)
   (let ((results (mapcar #'(lambda (item) (pexec (funcall fn item))) sequence)))
      (loop for result in results
            collect (yield result))))

(defmacro par-dolist ((item list) &body body)
   `(map nil #'yield (mapcar #'(lambda (,item) (pcall #'(lambda () ,@body) :lazy)) ,list)))   
