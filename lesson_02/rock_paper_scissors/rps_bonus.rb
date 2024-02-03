=begin
Scissors cuts Paper covers Rock crushes
Lizard poisons Spock smashes Scissors
decapitates Lizard eats Paper disproves
Spock vaporizes Rock crushes Scissors.

Problem:
Keep score of the player's and computer's wins.
When either the player or computer reaches three wins,
the match is over, and the winning player becomes
the 'Grand Winner'
- Rules:
  - Don't add your incrementing logic to #display_result.
  - Methods should perform one logical task.

Algorithm:
- Adjust the loop for a first to three wins game.
 - Change communication and loop break conditon.
- Will need to create counters for player and computer wins.
- For each round, we will need to capture who won the round
  - and increment the appropriate counter => helper method
- We will need to check the counter on each loop to see if
  - either player or computer has reached 3 wins.
- When either has 3 wins, break the loop.
- Congratulate the 'Grand Winner'
=end

VALID_CHOICES = %w(r p s li sp)

player_wins = 0
computer_wins = 0

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  game_hash = {
    's' => ['p', 'li'],
    'p' => ['r', 'sp'],
    'r' => ['li', 's'],
    'li' => ['sp', 'p'],
    'sp' => ['s', 'r']
  }
  game_hash[first].include?(second)
end

def winner(player, computer)
  if win?(player, computer)
    'player'
  elsif win?(computer, player)
    'computer'
  end
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

prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock!")
prompt("This will be a 'first to three-wins' match!")

loop do
  user_choice = ''
  loop do
    prompt("Choose one: 'r'ock, 'p'aper, 's'cissors, 'li'zard, or 'sp'ock")
    user_choice = Kernel.gets().chomp().downcase
    break if VALID_CHOICES.include?(user_choice)
    prompt("I'm sorry. That is a not a valid choice.")
    prompt("Please choose, 'r', 'p', 's', 'li' or 'sp'")
  end

  computer_choice = VALID_CHOICES.sample()

  prompt("You chose '#{user_choice}'")
  prompt("The computer chose '#{computer_choice}'")

  display_result(user_choice, computer_choice)
  puts

  winner = winner(user_choice, computer_choice)

  if winner == 'player'
    player_wins += 1
  elsif winner == 'computer'
    computer_wins += 1
  end

  break if (player_wins == 3) || (computer_wins == 3)
end

if player_wins > computer_wins
  prompt("Congratulations! You are the Grand Winner!")
else
  prompt("The computer is the Grand Winner!")
end

puts
prompt("Thank you for playing 'Rock, Paper, Scissors, Lizard, Spock'!")
