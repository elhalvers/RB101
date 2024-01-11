# frozen_string_literal: true

# Problem:
# Build a command line calculator program that does the following:
# - asks for two numbers
# - asks for the type of operationn to perform: add, subtract, multiply or divide
# - displays the result
#
# Notes/Questions:
# - Should probably consider rescuing divide by 0 exceptions.
# - Should this only work with Integers? or Floats as well? Floats too.
# - If allowing floats, should probably convert one of the numbers to float
# - Positive and negative both ok? Yes
#
# Examples:
# Input: 3, 4, add # => 7
# Input: 3, 4, divide # => .75
# Input 3, 4, subtract # => -1
#
# DS: Numeric
#
# Algorithm:
# 1. Ask for two numbers
#    - validate that input are number characters (helper method)
#  - One at a time.
# 2. save input variables
# 3. Ask for the type of operation (add, subtract, multiply, divide)
#    - validate that the input operation is in the list (helper method)
# 4. Calculate result
#    - Case statement, operation, when 'add', 'subtract', etc...
#      - Account for divide by zero error.
#    - based on case, use appropriate operation on input numbers
#      - num1 operator num2
# 5. Print result)

# helper methods

def num_valid?(num)
  num.to_f.to_s == num ||
    num.to_i.to_s == num
end

def operation_valid?(opp)
  operations = %w[add subtract multiply divide]
  operations.include?(opp)
end

# Main flow

num1 = ''
Kernel.puts('>> Hello, I am a simple calculator program.')
loop do
  Kernel.puts('>> Please, enter your first number.')
  num1 = Kernel.gets.chomp
  break if num_valid?(num1)

  Kernel.puts('>> Sorry, that is not a valid number. Please try again.')
end
Kernel.puts('>> Thank you.')

num2 = ''
loop do
  Kernel.puts('>> Please enter your second number.')
  num2 = Kernel.gets.chomp
  break if num_valid?(num2)

  Kernel.puts('>> Sorry, that is not a valid number. Please try again.')
end

operation = ''
loop do
  Kernel.puts('>> Please type in the operation (add, subtract, multiply, divide)')
  operation = Kernel.gets.chomp
  break if operation_valid?(operation)

  Kernel.puts(">> I'm sorry, please type in 'add', 'subtract', 'multiply' or 'divide'")
end

result = case operation
         when 'add'
           num1.to_f + num2.to_f
         when 'subtract'
           num1.to_f - num2.to_f
         when 'multiply'
           num1.to_f * num2.to_f
         when 'divide'
           num1.to_f / num2
         end
Kernel.puts("The result is #{result}")
