### Python

### Naive recursive Fibonacci
def fib(n):
    if n < 2:
        return 1
    else:
        return fib(n-1) + fib(n-2)

list(map(fib, range(0,10)))
list(map(fib, range(0,20)))
list(map(fib, range(0,30)))
list(map(fib, range(0,35)))
