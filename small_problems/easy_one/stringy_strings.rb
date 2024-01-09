# frozen_string_literal: true

# #Problem:
# Write a method that takes one argument, a positive integer,
# and returns a string of alternating 1s and 0s, always starting with 1.
# The length of the string should match the given integer.
#
#  - Input: 1 Integer
#  - Output: 1 string of input integer length
#
#  Rules:
#   - Input integer is positive
#   - return string must alternate 1s and 0s, always starting with 1
#   - length of the return string should match input integer
#
# Examples:
# stringy(6) == '101010'
# stringy(9) == '101010101'
# stringy(4) == '1010'
# stringy(7) == '1010101'
#
# DS:
# Input  - Integer used for string length
# Output - String
#
# Algorithm:
# 1. Create an empty 'result' string.
# 2. int number of times
#    - alternate adding a '1'
#      and then a '0'
#
# 3. Return 'result' string.
# =
def stringy(size, start = 1)
  result = ''
  size.times do |idx|
    num = if start.zero?
            idx.even? ? 0 : 1
          else
            idx.even? ? 1 : 0
          end
    result += num.to_s
  end
  result
end

# Tests
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Further Exploration Tests

puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'
