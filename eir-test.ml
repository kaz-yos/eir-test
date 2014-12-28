(* OCaml *)

(* infix range function *)
(* http://stackoverflow.com/questions/243864/what-is-the-ocaml-idiom-equivalent-to-pythons-range-function *)
let (--) i j =
  let rec aux n acc =
    if n < i then acc else aux (n-1) (n :: acc)
  in aux j []

(* Naive recursive Fibonacci *)
let rec fib n =
  match n with
    0 -> 1
  | 1 -> 1
  | n -> (fib (n - 1)) + (fib (n - 2))

(* map to a sequence of values *)
List.map fib (0--9)
List.map fib (0--19)
List.map fib (0--29)
List.map fib (0--34)


(* Build-up Fibonnaci *)
let rec fib2 n =
  let rec f n seq acc =
    if n = acc
    then List.nth seq 1
    else f n
           [(List.nth seq 1); ((List.hd seq) + (List.nth seq 1))]
           (acc + 1)
  in
  f n [0;1] 0

List.map fib2 (0--9)
List.map fib2 (0--19)
List.map fib2 (0--29)
List.map fib2 (0--34)
List.map fib2 (0--49)
(* Integer overflow *)
List.map fib2 (0--99)

