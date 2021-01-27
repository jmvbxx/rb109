# Write a method that returns true if its integer argument is palindromic, false
# otherwise. A palindromic number reads the same forwards and backwards.

def palindrome?(string)
  string == string.reverse
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

raise 'fail' unless palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true
