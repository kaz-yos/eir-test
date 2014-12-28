;;; Common Lisp

;; Naive recursive Fibonacci
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


;; Build-up Fibonacci
;; http://stackoverflow.com/questions/19535023/helper-nested-functions-in-cl
(defun fib2 (n)
  (labels ((f (n seq acc)
             (cond
               ((= n acc) (cadr seq))
               (t (f n
                     (list (cadr seq)
                           (+ (car seq) (cadr seq)))
                     (1+ acc))))))
    (f n '(0 1) 0)))

(mapcar #'fib2 (range 0 10))
(mapcar #'fib2 (range 0 20))
(mapcar #'fib2 (range 0 30))
(mapcar #'fib2 (range 0 35))
(mapcar #'fib2 (range 0 50))
(mapcar #'fib2 (range 0 100))
