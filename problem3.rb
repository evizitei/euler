def is_prime?(number)
  (2..Math.sqrt(number).ceil).each do |factor|
    return false if number % factor == 0
  end
  return true
end

def find_next_factor(target, denominator)
  loop do
    denominator += 1
    break if target % denominator != 0
  end
  return target / denominator, denominator
end

target = 600851475143
denominator = 2
factor = (target/denominator).ceil

loop do
  break if (target % factor == 0) && is_prime?(factor)
  factor, denominator = find_next_factor(target, denominator)
end

puts "largest prime factor is #{factor}"

