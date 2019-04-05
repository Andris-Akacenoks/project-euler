# Problem 6: Sum square difference
# Answer: 25164150

def get_difference(bound)
  natural_numbers = *(1..bound)
  sum_of_squares = 0
  sum = 0
  natural_numbers.each do |number|
    sum_of_squares += (number * number)
    sum += number
  end
  (sum * sum) - sum_of_squares
end

puts get_difference(100)