
final_a = 0
final_b = 0 
final_c = 0

catch(:break) do 
	(1..1000).each do |a|
		final_a = a
		(1..1000).each do |b|
			final_b = b
			c = 1000 - a - b
			if a**2 + b**2 == c**2
				final_c = c
				throw(:break)
			end
		end
	end
end

p final_a
p final_b
p final_c
p "your answer is #{final_a*final_b*final_c}"