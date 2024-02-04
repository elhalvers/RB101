=begin
Problem:
Build a program that asks a user for the length and width of a 
room in meters and then displays the area of the room in both 
square meters and square feet.

Note: 1 square meeter == 10.7639 square feet
=end

SQUARE_CONVERSION = 10.7639

def prompt(message)
  puts "=> #{message}"
end

def area(length, width)
  (length.to_f * width.to_f).round(2)
end

def sq_meters_to_sq_feet(square_meters)
  (square_meters * SQUARE_CONVERSION).round(2)
end

prompt("Enter the length of the room in meters:")
length = Kernel.gets().chomp()

prompt("Enter the width of the room in meteres:")
width = Kernel.gets().chomp()

area_in_sq_meters = area(length, width)
area_in_sq_feet = sq_meters_to_sq_feet(area_in_sq_meters)

prompt("The area of the room is #{area_in_sq_meters} square meters \
(#{area_in_sq_feet} square feet).")


