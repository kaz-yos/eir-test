;;; Scheme

;; Naive recursive Fibonacci
(define (fib n)
  (cond
   [(< n 2) 1]
   [else (+ (fib (- n 1)) (fib (- n 2)))]))

(map fib (iota 10))
(map fib (iota 20))
(map fib (iota 30))
(map fib (iota 35))

