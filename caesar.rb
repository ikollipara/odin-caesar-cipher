##
# This file contains the caesar_chipher method

require 'pry-byebug'

##
# This method applies the caesar chipher encryption algorithm
# to any string provided to it.

def caesar_chipher(string, shift = 5)
  lower_range = ('a'..'z').to_a
  upper_range = ('A'..'Z').to_a
  result = string.split('').map do |letter|
    if upper_range.include?(letter)
      upper_range[(upper_range.index(letter)+shift) % upper_range.length]
    elsif lower_range.include?(letter)
     lower_range[(lower_range.index(letter)+shift) % lower_range.length]
    else
      letter
    end
  end

  result.join
end
