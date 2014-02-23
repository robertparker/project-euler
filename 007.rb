# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

# require '../resources'

def is_prime?(num)
	(2..Math.sqrt(num)).each do |target|
		return false if num % target == 0
	end
	return true
end

def get_nth_prime(num)
	count = 0
	i = 1
	while count != num do
		i += 1
		p "i is #{i}"
		count += 1 if is_prime?(i)
		p "count is #{count}"
	end
	return i
end

p get_nth_prime(10001)