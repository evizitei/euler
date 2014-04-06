max_divisor = 20
step = 1

def is_divisible_by_full_range?(candidate, start_point)
  step_value = start_point
  while(step_value > 2)
    return false unless candidate % step_value == 0
    step_value -= 1
  end
  true
end

answer_candidate = nil
loop do
  answer_candidate = (max_divisor * (max_divisor - 1)) * step
  break if is_divisible_by_full_range?(answer_candidate, max_divisor)
  step += 1
end

puts "Smallest solution is #{answer_candidate}"
