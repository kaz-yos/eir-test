;;; Scheme (Gauche) via scheme-mode

(define (fib n)
  (cond
   ((= n 0) 1)
   ((= n 1) 1)
   (else (+ (fib (- n 1)) (fib (- n 2))))))

(map fib '(0 1 2 3 4 5 6 7 8 9))

