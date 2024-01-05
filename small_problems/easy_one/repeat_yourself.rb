=begin
Problem:
- Write a method that takes two arguments, a string and a positive integer,
  and prints the string as many times as the integer indicates.

Example: 
repeat('Hello', 3)
# Hello
# Hello
# Hello

Data Structure:
Input: String, Integer
Output: String, integer times

Mental Model:
- I know the Integer#times method
- Could use a loop, decrementing the int by 1 on each pass

Algorithm_1
1. print out the string, integer times.

Algorithm_2
1. Create a loop
 - Either while integer is greater than 0
   - print out the string
   - decrement the integer by 1
 - or, use a basic loop
   - print out the string
     - decrement the integer by 1
     - break if integer is equal to 0
=end

#Method1

#def repeat(str, int)
#  int.times {puts str}
#end

#Method2

#def repeat(str, int)
#  while int > 0
#    puts str
#    int -= 1
#  end
#end

#Method2

def repeat(str, int)
  loop do
    puts str
    int -= 1
    break if int == 0
  end
end



repeat('Hello', 3)


# Hello
# Hello
# Hello

