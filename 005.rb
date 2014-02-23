# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def divisible_by_all_up_to_twenty?(num)
	(20).downto(11).each do |target|
		return false if num % target != 0
	end
	return true
end


def is_prime?(num)
	(2..num/2).each do |target|
		return false if num % target == 0
	end
	return true
end

def find_smallest_factor_for_primes(num)
	primes = (num).downto(num/2).reject {|i| !is_prime?(i)}
	primes.inject(&:*)
end

def get_smallest_divisible_for_all_up_to(num)
	smallest_factor = find_smallest_factor_for_primes(num)
	i = smallest_factor
	while !divisible_by_all_up_to_twenty?(i) do 
		i += smallest_factor
	end
	return i
end

p get_smallest_divisible_for_all_up_to(20)