=begin

Problem:
Write a method that takes one integer argument, which may be positive, negative or zero.
This method returns true if the number's absolute value is odd.
You may assume that the argument is a valid integer value.

Examples:
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

DS:
Integer

Algorithm:
1. Take the absolute value of the input Integer
  - Ruby Integer method or manual
    - manual - if int < 0, multiply by -1 to create a posivite int
2. check if it is odd (Mental model)
 - Using Integer#odd?
 - or using modulo (int % 2 is not equal to zero)
3. Return true if odd, false if not odd

=end

# Ruby specific

def is_odd?(int)
  int.abs.odd?
end

# general

#def is_odd?(num)
#  new_num = num > 0 ? num : num * -1
#
#  if new_num % 2 == 0
#    false
#  else
#    true
#  end
#end


# Tests:
puts is_odd?(2)     == false
puts is_odd?(5)     == true
puts is_odd?(-17)   == true
puts is_odd?(-8)    == false
puts is_odd?(0)     == false
puts is_odd?(7)     == true
