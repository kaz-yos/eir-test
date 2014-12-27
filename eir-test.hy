;;; Hy
(defn fib [n]
  (cond
   [(<= n 2) 1]
   [True (+ (fib (- n 1)) (fib (- n 2)))]))

(print (list-comp (fib x) [x (range 0 11)]))
