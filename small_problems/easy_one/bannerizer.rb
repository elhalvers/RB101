=begin
Problem:
Write a method that will take a short line of text, and print it within a box.

Input: String
Output: String
Rules:
You may assume that the input will always fit in the terminal window.

Examples:
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

Algorithm:
- box_long variable that starts with '+-' and ends with '-+' and has '-' * str.length
- padding is "|" + "" * str.length + 2 + "|"
- message is "|  " + str + "  |"
- put string box_long
- put string padding
- put string message
- put string padding
- put string box_long

=end

def print_in_box(str)
  str_80 = str.slice(0..77) # Further Exploration
                            # Truncate box so string and box are max 80 chars.
  if str.size > 78
    str_wrap = str.insert(78, "\n")
  end

  box_long = '+-' + ('-' * str_80.length) + '-+'
  padding = '|' + (' ' * (str_80.length + 2)) + '|'

  message = str.size > 78 ? '| ' + str_wrap + ' |' : '| ' + str + ' |'

  puts box_long
  puts padding
  puts message
  puts padding
  puts box_long

  puts str.size
  puts str_80.size
end  


# TESTS

puts print_in_box('To boldly go where no one has gone before.')
puts
puts print_in_box('')
puts
puts print_in_box('fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff')

