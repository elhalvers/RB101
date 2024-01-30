=begin
Problem:
Build a program that randomly generates and prints Teddy's age. 
To get the age, you should generate a random number between 20 and 200.

Rules:
* inclusive?

Algorithm:
1. Create an 'age' variable that is initialized to a random number
   between 20 and 200
2. Output the string "Teddy is " + age + "years old!"
=end

#age = rand(20..200)

#puts "Ted is #{age} years old!"

=begin
* Further Exploration
Modify this program to ask for a name, and then print the age for that person. 
For an extra challenge, use "Teddy" as the name if no name is entered.
=end

def how_old(name, age)
  if name.empty?
    puts "Teddy is #{age} years old!"
  else
    puts "#{name} is #{age} years old!"
  end
end

print ">> Please enter a name. "
name = gets.chomp
age = rand(20..200)

how_old(name, age)


