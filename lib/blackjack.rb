def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(deal_card)
  puts "Your cards add up to #{deal_card}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(display_card_total)
  if display_card_total > 21
    puts "Sorry, you hit #{display_card_total}. Thanks for playing!"
  end
end

def initial_round
  deal_card
  deal_card
  display_card_total(deal_card)
end
end

def hit?
  prompt_user
  get_user_input
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
