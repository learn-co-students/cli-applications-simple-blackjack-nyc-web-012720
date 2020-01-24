require_relative "blackjack.rb"
  
runner
def run_program
  welcome
  ask_name
  name = store_name
  personalized_welcome(name)
end