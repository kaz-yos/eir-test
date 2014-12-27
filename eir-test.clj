;;; Clojure via cider.el

(defn fib [n]
  (cond
   (= n 0) 1
   (= n 1) 1
   :else (+ (fib (- n 1)) (fib (- n 2)))))

(map fib (range 0 10))
(map fib (range 0 20))
(map fib (range 0 30))
(map fib (range 0 35))

(defn fib2 
  ([n] (fib2 n [0 1] 0))
  ;;
  ([n [a b] acc]
     (cond
      (= n acc) b
      :else (recur n [b (+ a b)] (inc acc)))))

(map fib2 (range 0 10))
(map fib2 (range 0 20))
(map fib2 (range 0 30))
(map fib2 (range 0 35))
(map fib2 (range 0 50))
