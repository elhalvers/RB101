# Problem - Write a method that returns the sum of two integers.

# Casual Pseudocode
=begin
 Given 2 integers as 'num1' and 'num2'

 - Add num1 and num2
 - Return the result

# More Formal
# Given two integers, 'num1, num2'

START
SET result = num1 + num2
PRINT result
END

=end

def sum(num1, num2)
  result = num1 + num2
  result
end

p sum(5, 6) # => 11


