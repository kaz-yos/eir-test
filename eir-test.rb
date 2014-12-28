### Ruby

## Naive recursive Fibonacci
## http://meowist.github.io/blog/2013/03/02/fibonacci-meets-ruby/
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


## Build-up Fibonacci
def fib2(n)
  def f(n, seq, acc)
    if n == acc
    then
      seq[1]
    else
      f(n, [seq[1], seq[0] + seq[1]], acc + 1)
    end
  end
  f(n, [0,1], 0)
end

(0..9).to_a.map{|x| fib2(x)}
(0..19).to_a.map{|x| fib2(x)}
(0..29).to_a.map{|x| fib2(x)}
(0..34).to_a.map{|x| fib2(x)}
(0..49).to_a.map{|x| fib2(x)}
(0..99).to_a.map{|x| fib2(x)}
