sum = 0
previous_number = 0
current_number = 1

while(current_number <= 4000000) do
  if current_number % 2 == 0
    sum += current_number
  end
  next_number = current_number + previous_number
  previous_number = current_number
  current_number = next_number
end

puts "SUM is #{sum}"


