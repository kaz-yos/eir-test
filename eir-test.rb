# Ruby

# http://meowist.github.io/blog/2013/03/02/fibonacci-meets-ruby/
def fib(n)
  if n < 2
    1
  else
    fib(n-1) + fib(n-2)
  end
end

(0..10).to_a.map{|x| fib(x)}
