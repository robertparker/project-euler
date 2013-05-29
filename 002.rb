def generate_fibonacci(limit)
  sequence = [1]
  while sequence.last < limit  
    last_sum = sequence.count == 1 ? sequence[-1] + sequence[-1] : sequence[-1] + sequence[-2]
    sequence.push(last_sum)
  end
  sequence.pop if sequence.last > limit
  return sequence
end


def sum_even_valued(array)
  sum = 0
  array.each do |i|
    sum += i if i.even? 
  end
  return sum
end

puts sum_even_valued(generate_fibonacci(4e6))