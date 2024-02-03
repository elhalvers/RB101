require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  "=> #{message}"
end

def valid_number?(num)
  /\A[+-]?\d+(\.[\d]+)?\z/.match(num)
end

puts prompt('welcome')

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.strip.empty?()
    puts prompt("valid_name")
  else
    break
  end
end

puts(prompt("hello") + name.capitalize)

loop do # Main loop
  num1 = nil
  loop do
    puts prompt("first_number")
    num1 = Kernel.gets().chomp()

    if valid_number?(num1)
      break
    else
      puts prompt("not_valid_num")
    end
  end

  num2 = nil
  loop do
    puts prompt("second_number")
    num2 = Kernel.gets.chomp

    if valid_number?(num2)
      break
    else
      puts prompt("not_valid_num")
    end
  end

  puts prompt("operator_prompt")
  puts prompt("operators")

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      puts prompt("choose_1-4")
    end
  end

  puts prompt('operation_message')

  result = case operator
           when '1'
             num1.to_f + num2.to_f
           when '2'
             num1.to_f - num2.to_f
           when '3'
             num1.to_f * num2.to_f
           when '4'
             num1.to_f / num2.to_f
           end

  puts("#{prompt('result')} #{result}")

  puts prompt("go_again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

puts prompt("goodbye")
