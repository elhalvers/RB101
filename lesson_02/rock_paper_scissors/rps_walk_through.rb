VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second) == 'scissors' ||
    (first == 'paper' && second) == 'rock' ||
    (first == 'scissors' && second) == 'paper'
end

def display_result(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt("It's a tie!")
  end
end

user_choice = ''
loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    user_choice = Kernel.gets().chomp().downcase
    break if VALID_CHOICES.include?(user_choice)
    prompt("I'm sorry. That is a not a valid choice.")
  end

  computer_choice = VALID_CHOICES.sample()

  prompt("You chose '#{user_choice}'")
  prompt("The computer chose '#{computer_choice}'")

  display_result(user_choice, computer_choice)

  prompt('Would you like to play again? (y, n)')
  answer = Kernel.gets().chomp().downcase
  break unless answer.start_with?('y')
end

prompt("Thank you for playing 'Rock, Paper Scissors'!")
