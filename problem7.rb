def is_prime?(current_factors, prime_candidate)
  current_factors.all?{|n| prime_candidate % n != 0 }
end

primes = [2]
current_candidate = 3

loop do
  if is_prime?(primes, current_candidate)
    primes << current_candidate
    break if primes.size >= 10001
  end
  current_candidate += 2
end

puts "10,001st prime number is #{primes[10000]}"
