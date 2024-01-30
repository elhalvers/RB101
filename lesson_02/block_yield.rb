def greetings
  yield
  puts "Goodbye"
end

word = "Hello"

greetings do
  puts word
end

# Outputs 'Hello'
# Outputs 'Goodbye'

#def greetings
#  word = 'hello'
#  5.times { puts word }
#end
#
#word = "goodbye"
#
#greetings

