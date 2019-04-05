# Problem 5: Smallest multiple
# Answer: 232792560

def get_smallest_divisible(upper_bound)
  numbers = *(1..upper_bound)
  master = upper_bound + 1
  loop do
    passes = 0
    numbers.each do |number|
      if master % number == 0
        passes += 1
        return master if passes == numbers.length
      else
        master += 1
      end
    end
  end
  master
end

puts get_smallest_divisible(20)