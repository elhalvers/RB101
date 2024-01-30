#n = 10

#[1, 2, 3].each do |n|
#  puts n
#end

#puts n

#item = 1
#
#def print_item(item)
#  puts item
#  item = 2
#end
#
#print_item 5      # prints 5
#puts item         # prints 1
#print_item(item)  # prints 1
#puts item         # prints 1

item = 1

def print_item(num)
  puts num
  num = 2
end

print_item 5      # prints 5
print_item(item)  # prints 1
puts item         # prints 1
