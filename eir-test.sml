(* SML *)

(* Naive recursive Fibonacci *)
fun fib n =
    case n of
        0 => 1
      | 1 => 1
      | n => (fib (n-1)) + (fib (n-2))

(* http://stackoverflow.com/questions/9398318/does-sml-have-an-analog-to-pythons-range *)
map fib (List.tabulate(10, fn x => x))
map fib (List.tabulate(20, fn x => x))
map fib (List.tabulate(30, fn x => x))
map fib (List.tabulate(35, fn x => x))
