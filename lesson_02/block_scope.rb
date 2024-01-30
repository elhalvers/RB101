#a = 1         # outer scope variable
#
#loop do       # the block following the invocation of the `loop` method creates an inner scope
#  puts a      # => 1
#  a = a + 1   # "a" is re-assigned to a new value
#  break       # necessary to prevent infinite loop
#end
#
#puts a        # => 2  "a" was re-assigned in the inner scope

loop do       # the block following the invocation of the `loop` method creates an inner scope
  b = 1
  break
end

puts b        # => NameError: undefined local variable or method `b' for main:Object
