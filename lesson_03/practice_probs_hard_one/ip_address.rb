=begin
Ben was tasked to write a simple ruby method to determine if an input string 
is an IP address representing dot-separated numbers. e.g. "10.4.5.11". 
He is not familiar with regular expressions. Alyssa supplied Ben with 
a method called is_an_ip_number? that determines if a string is a numeric string 
between 0 and 255 as required for IP numbers and asked Ben to use it.

Alyssa reviewed Ben's code and says "It's a good start, but you missed a few things. You're not returning a false condition, and you're not handling the case that there are more or fewer than 4 components to the IP address (e.g. "4.5.5" or "1.2.3.4.5" should be invalid)."

Help Ben fix his code.
=end

def is_an_ip_number?(str_num)
  (0..255).include?(str_num.to_i)
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  dot_separated_words.length == 4 &&
    (dot_separated_words.all? {|word| is_an_ip_number?(word)})
end

p dot_separated_ip_address?('10.4.5.11') #=> true
p dot_separated_ip_address?('1.92.5.11') #=> true
p dot_separated_ip_address?('10.4.5') #=> false
p dot_separated_ip_address?('10.4.5.11.32') #=> false
p dot_separated_ip_address?('3.5.11.321') #=> false



