# find the only pythagorean triplet (a^2 + b^2 = c^2) where a + b + c = 1000


c_value = 1000
a_value = 0
b_value = 0
solved = false

def each_integer_combination(arg)
  sum_target = arg
  inverse = 0
  while(sum_target >= arg/2) do
    yield(sum_target, inverse)
    sum_target -= 1
    inverse = arg - sum_target
  end
end

def is_pythagorean_triplet?(a,b,c)
  puts "checking #{a} + #{b} = #{c}"
  return false if a == 0 ||  b == 0
  return true if (c*c) == (a*a + b*b)
end

while(true) do
  each_integer_combination(1000 - c_value) do |a,b|
    if is_pythagorean_triplet?(a, b, c_value)
      solved = true
      a_value = a
      b_value = b
      break
    end
  end
  break if solved
  c_value -= 1
end

puts "SOLUTION: a=#{a_value}, b=#{b_value}, c=#{c_value} => product: #{a_value * b_value * c_value}"

