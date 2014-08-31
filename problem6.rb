def sum_of_squares(max)
  (1..max).map{|n| n * n}.reduce(&:+)
end

def square_of_sums(max)
  sum = (1..max).reduce(&:+)
  sum * sum
end

target = 100
solution = square_of_sums(target) - sum_of_squares(target)
puts "difference is #{solution}"
