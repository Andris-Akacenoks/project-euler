# Problem 4: Largest palindrome product
# Answer: 906609

def is_palindrome?(number)
  number_array = number.to_s.scan /\d/
  number_array_r = number_array.reverse
  for i in 0..number_array.length-1
    return false if number_array[i] != number_array_r[i]
  end
  true
end

def get_largest_palindrome(num1, num2)
  list_of_answers = Hash.new
  (num1).downto(num1/2).each { |i| 
    (num2).downto(num2/2).each { |j| 
      candidate = i * j
      if is_palindrome?(candidate)
        answer = Hash.new
        answer[:palindrome] = candidate
        answer[:i] = i
        answer[:j] = j
        list_of_answers[candidate] = answer
      end
    }
  }
  list_of_answers
end

def get_largest_bundle(num1, num2)
  hash = get_largest_palindrome(num1, num2)
  largest = { :palindrome => 0, :i => 0, :j => 0 }
  hash.each do |key, value|
    if value[:palindrome] > largest[:palindrome]
      largest = value
    end
  end
  largest
end

puts get_largest_bundle(999, 999)

