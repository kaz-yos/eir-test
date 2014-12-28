### Python

## Naive recursive Fibonacci
def fib(n):
    if n < 2:
        return 1
    else:
        return fib(n-1) + fib(n-2)

list(map(fib, range(0,10)))
list(map(fib, range(0,20)))
list(map(fib, range(0,30)))
list(map(fib, range(0,35)))


## Build-up Fibonacci
def fib2(n):
    def f(n, seq, acc):
        if n == acc:
            return(seq[1])
        else:
            return(f(n, [seq[1], seq[0] + seq[1]], (acc + 1)))
    return(f(n, [0,1], 0))

list(map(fib2, range(0,10)))
list(map(fib2, range(0,20)))
list(map(fib2, range(0,30)))
list(map(fib2, range(0,35)))
list(map(fib2, range(0,50)))
list(map(fib2, range(0,100)))
