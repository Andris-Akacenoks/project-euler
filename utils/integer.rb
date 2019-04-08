class Integer
  N_BYTES = [42].pack('i').size
  N_BITS = N_BYTES * 16
  MAX = 2 ** (N_BITS - 2) - 1
  MIN = -MAX - 1
end

def is_prime?(number)
  (number-1).downto(2).each { |i| 
    return false if number % i == 0
  }
  true
end