;;; Emacs Lisp

;;; Naive recursive Fibonacci
(defun fib (n)
  (cond
   ((< n 2) 1)
   (t (+ (fib (- n 1)) (fib (- n 2))))))

(mapcar #'fib (number-sequence 0 9))
(mapcar #'fib (number-sequence 0 19))
(mapcar #'fib (number-sequence 0 29))
;; (mapcar #'fib (number-sequence 0 34))














