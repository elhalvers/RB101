# frozen_string_literal: true

# #Problem:
# Write a method that determines the index of the 3rd occurrence of a given character in a string.
# For instance, if the given character is 'x' and the string is 'axbxcdxex',
# the method should return 6 (the index of the 3rd 'x').
# If the given character does not occur at least 3 times, return nil.
#
# Casual pseudocode
#
# Given a string and a target character
#
# Create a 'counter' variable.
# Iterate across each character of the string
#  - Skip if the current character in the iteration is not the target character
#  - If the current character is the target character
#     - Update the counter
#     - Check if the counter is equal to 3 and if it is,
#     - return the index,
#     else next
# If counter is < 3 return nil
#
# More formal:
#
# START
#
# Given a string and a target character
#
# SET iterator = 1
# SET counter = 0
#
# WHILE iterator < length of string
#   IF current value of the string character equals the target character
#     SET counter = counter + 1
#     IF counter equals 3
#       PRINT iterator
#
#   iterator = iterator + 1
#
# IF counter < 3
#   PRINT nil
#
# END
#

# def third_index(str, char)
#  counter = 0
#
#  arr_strings = str.chars
#
#  arr_strings.each_with_index do |el, idx|
#    next if el != char
#    counter += 1
#    next if counter != 3
#    return idx
#  end
# nil
# end

def third_index(str, char)
  counter = 0
  idx = 0

  while idx < str.length
    if str[idx] == char
      counter += 1
      return idx if counter == 3
    end
    idx += 1
  end
  nil
end

# TESTS
p third_index('axbxcdxex', 'x') == 6
p third_index('axbxcdedc', 'x').nil?
