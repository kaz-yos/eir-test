;;; Hy

;; Naive recursive Fibonacci
(defn fib [n]
  (cond
   [(< n 2) 1]
   [true (+ (fib (- n 1)) (fib (- n 2)))]))

(defn mapcar [f lst]
  (list-comp (f x) [x lst]))

(mapcar fib (range 10))
(mapcar fib (range 20))
(mapcar fib (range 30))
;; (mapcar fib (range 35))


;; Build-up Fibonacci
(require hy.contrib.multi)
(defmulti fib2
  ([n] (fib2 n [0 1] 0))
  ([n seq acc]
   (cond
    [(= n acc) (first (rest seq))]
    [true (fib2 n
                [(first (rest seq))
                 (+ (first seq) (first (rest seq)))]
                (inc acc))])))

(mapcar fib2 (range 10))
(mapcar fib2 (range 20))
(mapcar fib2 (range 30))
(mapcar fib2 (range 35))
(mapcar fib2 (range 50))
(mapcar fib2 (range 100))
