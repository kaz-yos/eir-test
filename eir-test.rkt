;;; Racket

;; Naive recursive Fibonacci
(define (fib n)
  (cond
   [(< n 2) 1]
   [else (+ (fib (- n 1)) (fib (- n 2)))]))

(map fib (range 10))
(map fib (range 20))
(map fib (range 30))
(map fib (range 35))
