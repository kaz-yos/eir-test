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


;; Build-up Fibonacci
(defun fib2-helper (n seq acc)
  (cond
   ((= n acc) (cadr seq))
   (t (fib2-helper n
                   (list (cadr seq) (+ (car seq) (cadr seq)))
                   (1+ acc)))))

(defun fib2 (n)
  (fib2-helper n '(0 1) 0))

(mapcar #'fib2 (number-sequence 0 9))
(mapcar #'fib2 (number-sequence 0 19))
(mapcar #'fib2 (number-sequence 0 29))
(mapcar #'fib2 (number-sequence 0 49))
;; Integer overflow
(mapcar #'fib2 (number-sequence 0 99))
