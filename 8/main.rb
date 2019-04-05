# Problem 8: Largest product in a series
# Answer: 23514624000

def get_number_from_file(file)
  number_source = File.open(file).read
  number = ''
  number_source.each_line do |line|
    number += line.strip
  end
  number
end

def get_sum_of_array(array)
  sum = 0
  array.each do |number|
    sum += number
  end
  sum
end

def get_factor_of_list(array)
  factor = 1
  array.each do |number|
    factor = number * factor
  end
  factor
end

def get_adjacent_product(amount_of_digits)
  number = get_number_from_file('number.txt')
  number_list = number.scan /\d/
  list = []
  for i in 0..(amount_of_digits-1)
    list.append(number_list[i].to_i)
  end
  for i in (amount_of_digits-1)..(number_list.length-1)
    temp_list = []
    (i).downto(i-(amount_of_digits-1)).each { |j| 
      temp_list.append(number_list[j].to_i)
    }
    next if temp_list.include? 0
    original_sum = get_factor_of_list(list)
    temp_sum = get_factor_of_list(temp_list)
    list = temp_list if temp_sum > original_sum
  end
  get_factor_of_list(list)
end

puts get_adjacent_product(13)