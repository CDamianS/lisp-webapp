;;;; website.lisp
(in-package #:website)

(defparameter *server* (make-instance 'hunchentoot:easy-acceptor
                                      :port 4242))

(defun start ()
  (tbnl:start *server*))

(defun stop ()
  (tbnl:stop *server*))

(defparameter *css*
  '((body
     :background-color "#1e1e2e"
     :color "#cdd6f4")))

(tbnl:define-easy-handler (main :uri "/")
  ()
  (spinneret:with-html-string
    (:html
     (:head
      (:style
       (apply #'lass:compile-and-write *css*)))
     (:body (:h1 "Esto es un sitio web")
            (:h2 "corriendo en lisp")
            (:h3 "con los colores de catppuccin")))))

(tbnl:define-easy-handler (stuff :uri "/app")
    ()
  (spinneret:with-html-string
    (:html
     (:head
      (:style
       (apply #'lass:compile-and-write *css*)))
     (:body (:h1 "The hunchentoot can even handle different indexes")))))
