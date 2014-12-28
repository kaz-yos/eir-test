;;; Common Lisp

;;; Naive recursive Fibonacci
(defun fib (n)
  (cond
    ((< n 2) 1)
    (t (+ (fib (- n 1)) (fib (- n 2))))))

(defun range (min max)
  (loop for n from min below max
     collect n))

(mapcar #'fib (range 0 10))
(mapcar #'fib (range 0 20))
(mapcar #'fib (range 0 30))
(mapcar #'fib (range 0 35))

