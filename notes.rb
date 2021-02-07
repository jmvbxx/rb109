a = 1
b = 2

if a
  puts 'Hallo'
elsif b
  puts 'Goodbye'
else
  puts 'Nothing'
end

# For "x", determine how many positive integers less than or equal to "x" are odd but not prime. Assume "x" is an integer between 1 and 10000.

# Example: 5 has three odd numbers (1,3,5) and only the number 1 is not prime, so the answer is 1
# Example: 10 has five odd numbers (1,3,5,7,9) and only 1 and 9 are not prime, so the answer is 2

# A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

# Problem
# Input: An Integer
# Output: An Integer
# Rules:
# - Cross section of prime and off numbers
# -   Find all the odd numbers, find the quantity of numbers that aren't prime
#      5 has three odd numbers (1,3,5) and only the number 1 is not prime, so the answer is 1
# - Prime only divisible by itself and 1

# Algorithm
# -Expand the input integer into a range from (1..`x`) as an array
# -Select for array elements which evaluate to being odd
# -Create a method definition `prime?` to evaluate a number as prime or not (boolean)
#   - needs to be greater than 1
#   - needs to only be divisible itself and 1
#   - iterate from 2...num <-- the num is divisible by anything in this range, return false
# -use the select method again (contains the odd nums) and call the `prime?` method
# -Call the #size method

def odd_not_prime(x)
  full_arr = (1..x).to_a
  odd_arr = full_arr.select { |x| x.odd? }
  odd_and_prime = odd_arr.select { |x| !prime?(x) }
  odd_and_prime.size
end

def prime?(x)
  return false if x == 1
  (2...x).each do |num|
    return false if x % num == 0
  end

  true
end

p odd_not_prime(15) == 3
p odd_not_prime(48) == 10
p odd_not_prime(82) == 20

# Notes:
# - memorize a prime method
# - fibonacci numbers
# - sub arrays
