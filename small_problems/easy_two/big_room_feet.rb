=begin
Problem:
Modify this program to ask for the input measurements in feet, 
and display the results in square feet, square inches, and 
square centimeters.

1 sq foot = 144 sq inches
1 sq inch = 6.4516 sq cm
=end

SQ_FEET_TO_SQ_INCHES = 144
SQ_INCHES_TO_SQ_CM = 6.4516

def prompt(message)
  puts "=> #{message}"
end

def area_in_feet(length, width)
  (length.to_f * width.to_f).round(2)
end

def sq_feet_to_sq_inches(sq_feet)
  (sq_feet * SQ_FEET_TO_SQ_INCHES).round(2)
end

def sq_inches_to_sq_cm(sq_feet)
  (sq_feet * SQ_INCHES_TO_SQ_CM).round(2)
end

prompt("Enter the length of the room in feet:")
length = Kernel.gets().chomp()

prompt("Enter the width of the room in feet:")
width = Kernel.gets().chomp()

area_in_sq_feet = area_in_feet(length, width)
area_in_sq_inches = sq_feet_to_sq_inches(area_in_sq_feet)
area_in_sq_cm = sq_inches_to_sq_cm(area_in_sq_inches)

prompt("The area of the room is #{area_in_sq_feet} square feet \
(#{area_in_sq_inches} square inches, or #{area_in_sq_cm} square centimeters.)")


