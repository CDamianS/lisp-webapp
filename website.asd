;;;; website.asd

(asdf:defsystem #:website
  :description "Hunchentoot test with common lisp"
  :author "Damian Suarez <DamianS78@proton.com>"
  :license  "Apache License 2.0"
  :version "0.0.1"
  :serial t
  :components ((:file "package")
               (:file "website")))
