(* SML *)

(* Naive recursive Fibonacci *)
fun fib n =
    case n of
        0 => 1
      | 1 => 1
      | n => (fib (n-1)) + (fib (n-2))

(* Print an integer list *)
fun print_int_list lst =
    (print(String.concatWith " " (map Int.toString lst));
     print("\n");
     lst)

(* http://stackoverflow.com/questions/9398318/does-sml-have-an-analog-to-pythons-range *)
print_int_list(map fib (List.tabulate(10, fn x => x)))
print_int_list(map fib (List.tabulate(20, fn x => x)))
print_int_list(map fib (List.tabulate(30, fn x => x)))
print_int_list(map fib (List.tabulate(35, fn x => x)))


(* Build-up Fibonnaci *)
fun fib2 n =
    let
        fun f n seq acc =
            if n = acc
            then List.last seq
            else f n [(List.last seq), (hd seq) + (List.last seq)] (acc + 1)
    in
        f n [0,1] 0
    end

print_int_list(map fib2 (List.tabulate(10, fn x => x)))
print_int_list(map fib2 (List.tabulate(20, fn x => x)))
print_int_list(map fib2 (List.tabulate(30, fn x => x)))
print_int_list(map fib2 (List.tabulate(35, fn x => x)))
print_int_list(map fib2 (List.tabulate(44, fn x => x)))
(* Integer overflow *)
(* print_int_list(map fib2 (List.tabulate(50, fn x => x))) *)
(* print_int_list(map fib2 (List.tabulate(100, fn x => x))) *)


