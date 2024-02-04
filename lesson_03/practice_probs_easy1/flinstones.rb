=begin
Given the hash below,
Create an array containg only two elements: Barney's name and Barney's number.
=end

flintstones = { 
  "Fred" => 0, 
  "Wilma" => 1, 
  "Barney" => 2, 
  "Betty" => 3, 
  "BamBam" => 4, 
  "Pebbles" => 5 
}

# p flintstones.rassoc(2)
p flintstones.assoc('Barney')

barneys_deets = []

flintstones.each_pair do |key, value|
  if key == 'Barney'
    barneys_deets << key
    barneys_deets << value
  end
end
p barneys_deets



