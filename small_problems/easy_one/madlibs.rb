=begin
Problem:
Create a simple mad-lib program that prompts for a noun, a verb, an adverb, 
and an adjective and injects those into a story that you create.

- Input - 4 strings
- Output - 1 string as a sentence or paragraph that contains 
  the four input strings.
- Rules
- Mental Model
  - Need to use place-holders in the output story for the correct parts of speech 
    to allow flexibility.
  - No easy way to check that the entered word is the correct part of speech

Example:

Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

DS: just strings

Algorithm: ( Can store prompts in an external YAML file )
0. Optionally clear the screen first.
1. Prompt user to enter a noun.
2. Save the string input in a 'noun' variable.
3. Prompt user to enter a verb.
4. Save the string input in a 'verb' variable.
5. Prompt user to enter an adjective.
6. Save the string input in an 'adjective' variable.
7. Prompt user to enter an adverb.
8. Save the string input in an 'adverb' variable.
9. Output the story sentence that contains the interpolated input variables.
=end

puts "Enter a noun: "
noun = gets.chomp

puts "Enter a verb: "
verb = gets.chomp

puts "Enter an adjective: "
adjective = gets.chomp

puts "Enter an adverb: "
adverb = gets.chomp

puts "I often #{verb} the #{adjective} #{noun} #{adverb}. I like it that way!"

