;;; emacs lisp via ielm

(defun fib (n)
  (cond
   ((= n 0) 1)
   ((= n 1) 1)
   (t (+ (fib (- n 1)) (fib (- n 2))))))

(mapcar #'fib (number-sequence 0 9))
