class Fib_adder

  def fibonacci
    left, right = 1, 2
    while true
        yield left
        left, right = right, left+right
    end
  end

  def getSums(limit = 4_000_000)
    sum = 0
    fibonacci { |n| break if n >= limit; sum += n if n % 2 == 0; }
    sum
  end

end
