(* OCaml *)

(* infix range function *)
(* http://stackoverflow.com/questions/243864/what-is-the-ocaml-idiom-equivalent-to-pythons-range-function *)
let (--) i j = 
  let rec aux n acc =
    if n < i then acc else aux (n-1) (n :: acc)
  in aux j []

(* Fibonacci function *)
let rec fib n =
  match n with
    0 -> 1
  | 1 -> 1
  | n -> (fib (n-1)) + (fib (n-2))

(* map to a sequence of values *)
List.map fib (0--9)
