def is_palindrome?(number)
  string_value = number.to_s
  proximal_index = 0
  distal_index = string_value.size - 1
  while(string_value[proximal_index] == string_value[distal_index])
    return true if proximal_index >= distal_index
    proximal_index += 1
    distal_index -= 1
  end
  return false
end

pivot = 999
multiplier = 999
palindrome_candidate = nil
max_palindrome = 0

loop do
  palindrome_candidate = pivot * multiplier
  puts "checking #{palindrome_candidate} from #{pivot} and #{multiplier}"
  if is_palindrome?(palindrome_candidate)
    max_palindrome = palindrome_candidate if palindrome_candidate > max_palindrome
  end

  if multiplier <= pivot
    pivot -= 1
    multiplier = 999
  else
    multiplier -= 1
  end
  break if pivot <= 0
end

puts "largest palindrome product of two 3-digit numbers is #{max_palindrome}"

