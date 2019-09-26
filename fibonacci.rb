# This module contains functions for basic operations on Fibonacci numbers
module Fibonacci

  # Yields to the caller all the fibonacci numbers that are less than or equal
  # to `max_val`. One number per iteration.
  def self.numbers_upto(max_val)
    a, b = 1, 2
    until a > max_val do
      yield a

      # Parallel assignment - avoids the need for a temporary variable
      a, b = b, a + b
    end
  end

  # Calculates the sum of all even Fibonacci numbers that are less than or equal
  # to `max_val`
  def self.sum_even_numbers_upto(max_val)
    total = 0
    numbers_upto(max_val) do |i|
      total += i if i.even?
    end
    total
  end
end

# For our use case, we simply need
# total = Fibonacci.sum_even_numbers_upto(4_000_000)
# puts "The sum of all even Fibonacci numbers that do not exceed 4 million is #{total}"