
def sum_multiples(num1,num2)
  sum = 0
  (1...1000).each do  |i|
    sum += i if i % num1 == 0 || i % num2 == 0
  end
  return sum 
end

puts  sum_multiples(3,5)
