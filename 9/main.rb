# Problem 9: Special Pythagorean triplet
# Answer: 31875000
require_relative '../utils/integer'

def get_triplet(product)
  for b in 2..Integer::MAX
    for a in 1..(b - 1)
      c_squared = (a * a) + (b * b)
      if (Math.sqrt(c_squared) % 1 == 0)
        c = Math.sqrt(c_squared)
        if (a < b && b < c) && (a + b + c == product)
          return (a * b * c).to_i
        end
      end
    end
  end
end

puts get_triplet(1000)
