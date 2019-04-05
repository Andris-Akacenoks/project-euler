def is_palindrome?(number)
  number_array = number.to_s.scan /\d/
  number_array_r = number_array.reverse
  for i in 0..number_array.length-1
    return false if number_array[i] != number_array_r[i]
  end
  true
end

def get_largest_palindrome
  number_1 = 999
  number_2 = 999
  array_of_candidates = Hash.new
  (number_1).downto(number_1/2).each { |i| 
    (number_2).downto(number_2/2).each { |j| 
      candidate = i * j
      if is_palindrome?(candidate)
        candidates = Hash.new
        candidates[:palindrome] = candidate
        candidates[:i] = i
        candidates[:j] = j
        array_of_candidates[candidate] = candidates
      end
    }
  }
  array_of_candidates
end

def get_largest_bundle
  hash = get_largest_palindrome
  largest = { :palindrome => 0, :i => 0, :j => 0 }
  hash.each do |key, value|
    if value[:palindrome] > largest[:palindrome]
      largest = value
    end
  end
  largest
end

puts get_largest_bundle

