# Write a program that asks the user to enter an integer greater than 0, then asks
# if the user wants to determine the sum or product of all numbers between 1 and
# the entered integer.

def compute_sum(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

def compute_product(number)
  total = 1
  1.upto(number) { |value| total *= value }
  total
end

puts '>> Please enter an integer greater than 0'
number = gets.chomp.to_i

puts ">> Enter 's' for sum or 'p' for product"
operation = gets.chomp

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts 'Unknown operation'
end
