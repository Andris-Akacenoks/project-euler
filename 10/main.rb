# Problem 10: Summation of primes
# Answer: 142913828922
require_relative '../utils/integer'
require 'prime'

def get_sum_of_primes_below(number)
  sum = 0
  Prime.each(number) do |prime|
    sum += prime
  end
  sum
end

puts get_sum_of_primes_below(2000000)