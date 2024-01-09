# frozen_string_literal: true

#
# Problem:
# Write a method that takes two arrays of numbers and returns the result of merging the arrays.
# The elements of the first array should become the elements at the even indexes of the returned array,
# while the elements of the second array should become the elements at the odd indexes.
#
# Example:
# merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]
#
# Casual Pseudocode
#
# Given two arrays, 'arr1', 'arr2'
#
# - Start with an empty array, 'result'
# - Create an 'idx' variable set to 0
# - Create a while loop - arr1 length
#   - For each iteration of the loop
#     - append the first element of arr1
#     - append the first element of arr2
#     - increment the index
# Return the result array
#
# More formal
#
# START
#
# Given two arrays, 'arr1', 'arr2'
#
# SET iterator = 1
# SET result = []
#
# WHILE iterator < length of arr1
#   - SET result = result + the current element of arr1
#   - SET result = result + the current element of arr2
#   - SET iterator = iterator + 1
# PRINT result
#
# END

def merge(arr1, arr2)
  idx = 0
  result = []

  while idx < arr1.length
    result << arr1[idx]
    result << arr2[idx]
    idx += 1
  end

  result
end

# Tests
p merge([1, 2, 3], [4, 5, 6]) == [1, 4, 2, 5, 3, 6]
