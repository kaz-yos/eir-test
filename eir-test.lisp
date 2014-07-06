;;; Common lisp via SLIME

(defun fib (n)
  (cond
   ((= n 0) 1)
   ((= n 1) 1)
   (t (+ (fib (- n 1)) (fib (- n 2))))))

(mapcar #'fib '(0 1 2 3 4 5 6 7 8 9))

