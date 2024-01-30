=begin
Problem:
Write a method that takes a positive integer as an argument 
and returns that number with its digits reversed.
- Input: Integer
- Intermediate: String
- Output: Integer
=end

def reversed_number(num)
  num.to_s.reverse.to_i
end


# Tests
p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
