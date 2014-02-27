class Collatz
	attr_accessor :collatz_sequences, :max_length, :max_length_number
	
	def initialize
		@collatz_sequences = {}
		@max_length = 0
		@max_length_number = 0
	end

	def get_next(num)
		num.even? ? num/2 : 3*num +1
	end

	def evaluate_for_max(num, length)
		if length > @max_length
			@max_length = length
			@max_length_number = num
		end
	end

	def evaluate_up_to(num)
		(1..num).step(2).each {|num| get_sequence(num) }
	end

	def get_sequence(num)
		num_array = [num]
		last_element = num
		this_hash = {}
		while last_element != 1 do
			last_element = get_next(last_element)


			if rest_of_sequence = @collatz_sequences[last_element]
				final_length = num_array.length + rest_of_sequence.length
				evaluate_for_max(num, final_length)
				final_num_sequence = num_array.concat rest_of_sequence
				this_hash.each do |key,value|
					@collatz_sequences[key] = value.concat rest_of_sequence
				end
				return final_num_sequence
			else
				num_array << last_element
				this_hash[last_element] = [last_element] if last_element < 1000000
				this_hash.each do |key,value|
					next if key == last_element
					value << last_element
				end
			end
		end
		@collatz_sequences[num] = num_array
		
		this_hash.each do |key,value|
			@collatz_sequences[key] = value
		end

		evaluate_for_max(num, num_array.length)
	end

end


collatz = Collatz.new
p collatz.evaluate_up_to(1000000)
p collatz.max_length
p collatz.max_length_number
