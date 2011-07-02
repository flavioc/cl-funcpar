
(asdf:defsystem :cl-funcpar
 :name "cl-funcpar"
 :author "Flavio Cruz <flaviocruz@gmail.com>"
 :license "BSD"
 :serial t
 :components ((:file "package")
	 						(:file "funcpar"))
 :depends-on (:eager-future2))
