value = 0
sum = 2
numbers = [1, 2]
while value <= 4000000
  value = numbers[-2] + numbers[-1]
  numbers << value
  sum += value  if value % 2 == 0
end

puts sum