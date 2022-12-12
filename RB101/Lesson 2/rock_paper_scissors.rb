VALID_CHOICE = ['rock', 'paper', 'scissors', 'spock', 'lizard']

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'spock' && second == 'rock')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You Won!")
    scorecount = 1
  elsif win?(computer, player)
    prompt("computer Won!")
    scorecount = 2
  else
    prompt("It's a tie")
    scorecount = 3
  end
end

round = 1
pscore = 0
cscore = 0
scorecount = 0

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICE.join(',')}")
    choice = gets.chomp

    if VALID_CHOICE.include?(choice)
      break
    else
      prompt("That's not a valid player")
    end
  end

  computer_choice = VALID_CHOICE.sample

  puts("You chose: #{choice}; Computer Chose : #{computer_choice}")

  if round == 3
    display_results(choice, computer_choice)
    if pscore > cscore
      prompt("Player Has Won The Match!")
    elsif cscore > pscore
      prompt("Computer Has Won The Match!")
    elsif cscore == pscore
      prompt("Wow A All Out Tie")
    end
    break
  else
    round = round + 1
    if display_results(choice, computer_choice) == 1
      pscore = pscore + 1
    elsif display_results(choice, computer_choice) == 2
      cscore = cscore + 1
    end
  end

  prompt("Player Score: #{pscore} Computer Score: #{cscore}")

end

#prompt("Do you want to play again?")
#answer = gets.chomp
#break unless answer.downcase.start_with?('y')