#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?

def get_factors(num)
	factors = []

	(1...num).each do |fac|
		if num % fac == 0 
			break if factors.include?(fac)
			factors << fac 
			factors << num/fac
		end
	end
	return factors
end

def is_prime?(num)
	(2..num/2).each do |target|
		return false if num % target == 0
	end
	return true
end

def get_prime_factors(num)
	all_factors = get_factors(num)
	prime_factors = []
	all_factors.each do |fac|
		prime_factors << fac if is_prime?(fac)
	end
	return prime_factors
end

# largest prime factor
p get_prime_factors(600851475143).max
