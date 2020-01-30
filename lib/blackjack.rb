def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(card)
  # code #display_card_total here
  # cards.reduce{|sum, card| sum += card}
  puts "Your cards add up to #{card}"
  card
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  user_input = gets
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_one = deal_card
  card_two = deal_card
  card_total = card_one + card_two
  display_card_total(card_total)
end

def hit?(total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input != 'h' && input != 's'
    invalid_command
    prompt_user
    input = get_user_input
  else
    if input == 'h'
      return total += deal_card
    else
      return total
    end
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  hand_total = initial_round
  while hand_total < 21
    hand_total = hit?(hand_total)
    display_card_total(hand_total)
  end
  end_game(hand_total)
end
    
