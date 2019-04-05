# Problem 1: Multiples of 3 and 5
# Answer: 233168

def get_sum_of_multiples(bound)
  sum = 0
  for i in 1..(bound-1)
    sum += i if ((i % 3 == 0) || (i % 5 == 0) && (i > 2))
  end
  sum
end

puts get_sum_of_multiples(1000)