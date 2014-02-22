# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.


def is_palindrome?(num)
	digit_array = num.to_s.chars.map(&:to_i)
	length = digit_array.length
	each_half = digit_array.each_slice(length/2).map(&:to_a)
	return each_half[0] == each_half[1].reverse
end

def get_palindromes(max, min)
	all_palindromes = []
	(max).downto(min).each do |first_num|
		(max).downto(max/2).each do |second_num|
			all_palindromes << first_num*second_num if is_palindrome?(first_num*second_num)
		end
	end
	return all_palindromes
end

p get_palindromes(999,100).max

