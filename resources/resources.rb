
def is_prime?(num)
	return false if num.even?
	(2..Math.sqrt(num)).each do |target|
		return false if num % target == 0
	end
	return true
end

