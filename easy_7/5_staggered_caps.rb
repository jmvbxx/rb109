# Write a method that takes a String as an argument, and returns a new String that
# contains the original value using a staggered capitalization scheme in which every
# other character is capitalized, and the remaining characters are lowercase. Characters
# that are not letters should not be changed, but count as characters when switching
# between upper and lowercase.

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

=begin
---------------Problem Solving Process-------------------------
P (Understand the Problem):

Goal / Problem Restatement -
* Perform some operations on the argument to a method which is a string such that it returns the same string but alternate characters are capitalized.
Empty space is also a character in string.

Input - String

Output - String

Rules / Constraints/ Conditions -
* Characters that are not letters should not be changed. This includes empty spaces and other characters except strings.
* Characters that are not letters should count as charcters when switching from upper to lowercase.

Mental model -
* "I am a student" => "I Am A StUdEnT"
* "JASON SCORED 99 percent" => "JaSon ScOrEd 99 PeRcEnT"
Question: Should the arguement be validated?

E (Examples / Test cases):
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'


D (Data Structure):

Input /Processing/Output - String |Array| String

A (Algorithm):
1. Define a method, staggered_case that takes one argument, a string.
2. Convert the string to an array of charcters and assign to a new variable characters_array
3. Iterate through the array and capitalize all the charaters in an even index.
4. convert the charcters_array back to a string and return it from the method

def staggered_case(string)
  characters_array = string.chars.map(&:downcase)
  index = 0

  characters_array.each do |char|
    char.capitalize! if index.even?
    index += 1
  end

  characters_array.join
end

=end
