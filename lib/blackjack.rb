require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  (rand(1..11))
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp 
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(card_total) #card_total = integer
  prompt_user #prompts user to type h to hit s to stay
  user_input = get_user_input #accepts input from user
  
  if user_input == "h" 
     card_total += deal_card #card_total is increased by whatever card is dealt via the deal_card method
  elsif user_input == "s"
     card_total #continue with the original card_total
  else
     invalid_command #gives the invalid_command message
     hit?(card_total) #starts the process over again
  end
end

def invalid_command
   puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  players_cards = initial_round
  until players_cards > 21
    players_cards = hit?(players_cards)
    display_card_total(players_cards)
  end
  end_game(players_cards)
end
    
