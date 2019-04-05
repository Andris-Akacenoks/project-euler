# Problem 3: Largest prime factor
# Answer: 6857

def is_prime?(number)
  for i in 2..number-1
    return false if number % i == 0
  end
  true
end

def get_prime_factors(number)
  prime_factors = []
  j = 2
  (number-1).downto(2).each { |i|
    if number % j == 0
      if is_prime?(j)
        prime_factors << j
      end
    end
    j+=1
  }
  prime_factors
end

puts get_prime_factors(600851475143)