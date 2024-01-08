=begin
#Problem - Write a method that takes an array of integers, and returns a new array 
           with every other element from the original array, starting with the first element.
#Example:
every_other([1,4,7,2,5]) # => [1,7,5]

# Casual pseudocode

# Given an array of integers- 
 - Start with an empty array, 'result'
 - Iterate through each member of the input array
  - Append every other member to the 'result' array
   - more specific, 
- Return the result array

# More formal

START

# Given a collection of integers

SET iterator = 1 (first element)
SET result = []

WHILE iterator <= length of input array
  SET result = result + appended  value at space 'iterator'

  iterator = iterator + 2

PRINT result

END

=end

# Ruby way
#def every_other(arr_of_nums)
#  result = []
#
#  arr_of_nums.each_with_index do |val, idx|
#    next if idx.odd?
#    result << val
#  end
#  result
#end

# General method follows pseudocode more specifically

def every_other(arr_of_nums)
  iterator = 0
  result = []

  while iterator < arr_of_nums.length
    result << arr_of_nums[iterator]
    iterator += 2
  end

  result
end

# TEST
p every_other([1,4,7,2,5]) == [1,7,5]

