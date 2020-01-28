require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...12)
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

def invalid_command
  puts "Please enter a valid command"
end


def hit?(sum)
  
      prompt_user
      input = get_user_input
      if input == 's'
        return sum
      elsif input == 'h'
        new_card = deal_card
        return sum += new_card
      else
        invalid_command
        prompt_user
        input = get_user_input
      end 
  sum
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  start = welcome
  sum = initial_round
  output = hit?(sum)
  display_card_total(output)
  while output <= 21
    output = hit?(output) 
  end 
  end_game(output)
end
    
