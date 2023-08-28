;;;; package.lisp

(defpackage #:website
  (:use #:cl))

(in-package #:website)

(ql:quickload :hunchentoot)
(ql:quickload :spinneret)
(ql:quickload :lass)
