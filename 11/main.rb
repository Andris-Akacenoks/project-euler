def get_number_array
  list = []
  source = File.open('numbers.txt').read
  source.each_line.with_index do |line, index|
    sublist = []
    numbers = line.strip.split(" ")
    for i in 0..(numbers.length - 1)
      sublist << numbers[i].to_i
    end
    list << sublist
  end
  list
end

print get_number_array