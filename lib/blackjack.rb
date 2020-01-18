def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
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
  text = gets.chomp
  text
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
 total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(num)
  # code hit? here
  prompt_user
  x = get_user_input
  if x == "s"
    return   num
  elsif x == "h"
    return  deal_card + num
  else
    invalid_command
    hit?(num)
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
  result = 0
  until result > 21
    result =hit?(initial_round)
    display_card_total(result)
  end
  return end_game(result)
end
