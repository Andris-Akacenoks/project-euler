# Problem 9: Special Pythagorean triplet
# Answer: 31875000
require_relative '../utils/integer'

def get_triplet(product)
  for i in 2..1000
    for j in 1..(i-1)
      answer = Hash.new
      a_squared = j * j
      b_squared = i * i
      c_squared = a_squared + b_squared
      if (Math.sqrt(c_squared) % 1 == 0)
        answer[:a] = j
        answer[:b] = i
        answer[:c] = Math.sqrt(c_squared)
        if (answer[:a] < answer[:b] && answer[:b] < answer[:c]) && 
          (answer[:a] + answer[:b] + answer[:c] == product)
          return (answer[:a] * answer[:b] * answer[:c]).to_i
        end
      end
    end
  end
end

puts get_triplet(1000)
