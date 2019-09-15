require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = nil
  gets input
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  hand = 0
  2.times { hand += deal_card }
  puts "Your cards add up to #{hand}"
  hand
end

def hit?(card_total)
  prompt_user
  choise = get_user_input
  if choise == "h"
    deal_card + card_total
  elsif choise  == "s"
    card_total
  else
    invalid_command
    hit?(card_total)
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
  initial_round
end
    
