def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return (1+rand(11))
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.strip
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  temp = deal_card+deal_card
  display_card_total(temp)
  return temp
end

def hit?(current_total)
  prompt_user
  input = get_user_input
  while !(input == 'h' || input == 's')
      invalid_command
      prompt_user
      input = get_user_input
    return input
  end
  return current_total if input == 's'
  return (current_total+deal_card) if input == 'h'
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
  welcome()
  current_total = initial_round
  while current_total < 21 
  current_total = hit?(current_total)
  display_card_total(current_total)
  end
  end_game(current_total)
end
