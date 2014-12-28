;;; Hy

(defn fib [n]
  (cond
   [(< n 2) 1]
   [True (+ (fib (- n 1)) (fib (- n 2)))]))

(defn mapcar [f lst]
  (list-comp (f x) [x lst]))

(print (mapcar fib (range 10)))
