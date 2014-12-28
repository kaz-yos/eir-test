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


;; Build-up Fibonacci
(define (fib2 n)
  (define (f n seq acc)
    (cond
     [(= acc n) (cadr seq)]
     [else (f n
              (list (cadr seq)
                    (+ (car seq) (cadr seq)))
              (+ acc 1))]))
  (f n '(0 1) 0))

(map fib2 (range 10))
(map fib2 (range 20))
(map fib2 (range 30))
(map fib2 (range 35))
(map fib2 (range 50))
(map fib2 (range 100))
