(defpackage #:introspect-environment
  (:use #:cl)
  (:export #:compiler-macroexpand-1 #:compiler-macroexpand)
  (:export #:variable-type #:function-type
	   #:parse-macro #:parse-compiler-macro)
  (:export #:constant-form-value)
  (:export #:policy #:policy-quality)
  (:export #:typexpand #:typexpand-1))
