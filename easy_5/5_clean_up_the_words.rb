# Given a string that consists of some words (all lowercased) and an assortment
# of non-alphabetic characters, write a method that returns that string with all
# of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic
# characters occur in a row, you should only have one space in the result (the result
# should never have consecutive spaces).

ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end
  clean_chars.join
end

# def cleanup(text)
#   https://ruby-doc.com/core-2.7.2/String.html#method-i-squeeze
#   text.gsub(/[^a-z]/i, ' ').squeeze(' ')
# end

p cleanup("---what's my +*& line?") == ' what s my line '
