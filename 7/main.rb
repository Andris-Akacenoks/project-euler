# Problem 7: 10001st prime
# Answer: 104743

def is_prime?(number)
  for i in 2..number-1
    return false if number % i == 0
  end
  true
end

def get_prime_by_order(target_position)
  order = 0
  i = 2
  while order < target_position
    if is_prime?(i)
      order += 1 
      return i if order == target_position
    end
    i += 1
  end
end 

puts get_prime_by_order(10001)