# frozen_string_literal: true

# Problem : A method that determines which number is greatest in a collection
#
# Casual Pseudocode:
#
# Given a collection of integers.
#
# Iterate through the collection one by one.
#   - save the first value as the starting value.
#   - for each iteration, compare the saved value with the current value.
#   - if the saved value is greater, or it's the same
#     - move to the next value in the collection
#   - otherwise, if the current value is greater
#     - reassign the saved value as the current value
#
# After iterating through the collection, return the saved value.
#
# More formal pseudocode:
#
# START
#
# Given a collection of integers called "numbers"
#
# SET iterator = 1
# SET saved_number = value within numbers collection at space 1
#
# WHILE iterator <= length of numbers
#   SET current_number = value within numbers collection at space "iterator"
#   IF saved_number >= current_number
#     go to the next iteration
#   ELSE
#     saved_number = current_number
#
#   iterator = iterator + 1
#
# PRINT saved_number
#
# END

def find_greatest(numbers)
  break if numbers.nil?

  saved_number = numbers[0]

  numbers.each do |num|
    break if num.nil?
    next if saved_number >= num

    saved_number = num
  end

  saved_number
end

array = [3, 5, 9, 7, 12, 4]
# array = nil

p find_greatest(array)
