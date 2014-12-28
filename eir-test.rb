### Ruby

### Naive recursive Fibonacci
### http://meowist.github.io/blog/2013/03/02/fibonacci-meets-ruby/
def fib(n)
  if n < 2
    1
  else
    fib(n-1) + fib(n-2)
  end
end

(0..9).to_a.map{|x| fib(x)}
(0..19).to_a.map{|x| fib(x)}
(0..29).to_a.map{|x| fib(x)}
(0..34).to_a.map{|x| fib(x)}
