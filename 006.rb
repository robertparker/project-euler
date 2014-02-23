# The sum of the squares of the first ten natural numbers is,

# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# # Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_natural_number_squares(num)
	sum = 0
	(1..num).each {|i| sum += i*i}
	p "sum_natural_number_squares is #{sum}"
	return sum
end

def square_natural_number_sum(num)
	sum =(1..num).inject(&:+)
	p "square_natural_number_sum is #{sum*sum}"
	return sum*sum
end

p square_natural_number_sum(100) - sum_natural_number_squares(100)