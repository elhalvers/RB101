# We have most of the Munster family in our age hash:
# Add ages for Marilyn and Spot to the existing hash

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

ages.each_pair {|key, value| puts "#{key} is #{value}"}