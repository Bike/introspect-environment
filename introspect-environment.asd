(asdf:defsystem #:introspect-environment
  :description "Small interface to portable but nonstandard introspection of CL environments."
  :author "Bike <aeshtaer@gmail.com>"
  :license "WTFPL"
  :version "0.1"
  :depends-on (#+sbcl #:sb-cltl2)
  :serial t
  :components ((:file "package")
	       (:file "expander")
	       #+sbcl (:file "sbcl")
	       #+ccl (:file "ccl")
	       #+cmucl (:file "cmucl")
	       #-(or sbcl ccl cmucl) (:file "default")
	       (:file "doc"))
  ;; cargo culted from bordeaux
  :in-order-to ((asdf:test-op
		 (asdf:load-op introspect-environment-test)))
  :perform (asdf:test-op :after (op c)
	     (asdf:oos 'asdf:test-op :introspect-environment-test)))
