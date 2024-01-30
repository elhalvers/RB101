=begin
Problem:
Write a method that takes a positive integer, n, as an argument, 
and displays a right triangle whose sides each have n stars. 
The hypotenuse of the triangle (the diagonal side in the images below) 
should have one end at the lower-left of the triangle, 
and the other end at the upper-right.

Input: Integer
Output: multi-line string of asterisks
 - right triangle whose sides each have n stars
Rules:
- n is a positive integer

Examples:
triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

DS:
- Input: Integer 
- Intermediate: Maybe a nested array to print out at the end.
- multiple lines of strings

Algorithm:
High-level (notes / mental model):
- Method Body
  - 'result' = []
  - Outer loop is number of rows (n) loop n times
    - create an empty string variable to collect stars generated in the inner loop
    - empty array to store row stars for each row
    - counter = 0

   - Inner loop generates stars for current row
    - Each row will have the same star count as the current row number
      - so, maybe row_number is current index + 1
      - the base, or last row will have (n) stars
      - each row will have (n) length but have row number stars, 'right-aligned'
      - maybe append to an empty string, n - row_number ' ' + row_number '*' 
          irb(main):004> empty_str = ''
            => ""
            irb(main):005> empty_str << (' ' * 3)
            => "   "
            irb(main):006> empty_str
            => "   "
            irb(main):007> empty_str << ('*' * 1)
            => "   *"
      
  - The Outer loop will need to have a 'counter' besides the index 
    that the inner loop can reference and update with each itteration of the inner loop
    so the next inner loop itteration can use the updated counter
  - At the end of the Outer loop, append  

1. create an empty 'result' array
2. n times, iterate through a loop
 - For each iteration |count|
   - create an empty string
  
   - 
    - 

=end

def triangle(n)
  n.times do |idx|
    row_num = idx + 1
    loop do
      puts (" " * (n - row_num)) + ("*" * row_num)
      break
    end
  end
end


# Tests
triangle(5)
triangle(9)

puts
puts


=begin # Launch School Solution

def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars) # I like the variable names
    spaces -= 1
    stars += 1
  end
end
=end

=begin

Further Exploration
Try modifying your solution so it prints the triangle upside down from its current orientation. 
Try modifying your solution again so that you can display the triangle with the right angle at 
any corner of the grid.

=end

def upside_down_triangle(num)
  spaces = 0 
  stars = num 

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces += 1
    stars -= 1
  end

end

# Tests
upside_down_triangle(5)
upside_down_triangle(9)
