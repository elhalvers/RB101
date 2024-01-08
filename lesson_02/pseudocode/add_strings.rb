=begin
# Problem - Write a method that takes an array of strings, and returns a string
            that is all those strings concatenated together.

# Casual pseudocode

  Given an array of strings
  - Start with an empty string variable 'result'
  Iterate through the array of strings and for each string
  - add it to the 'result' string
  return the 'result' string

# More formal:

START

# Given an array of strings

SET iterator = 1
SET result = ""

WHILE iterator <= length of input array
  SET result = result + string at space 'iterator'
  iterator = iterator + 1

PRINT result

END

=end

def add_strings(arr_of_strings)
  result = ''
  arr_of_strings.each {|str| result += str}
  result
end

arr_strings =  ['hello', 'joy', 'fun', 'great', 'old']

p add_strings(arr_strings)

