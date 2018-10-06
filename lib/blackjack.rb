def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(11)+1
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.strip
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = 0
  card_total += deal_card
  card_total += deal_card
  
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == "h"
    true
  elsif input == "s"
    false
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
  card_total = initial_round
  until card_total > 21
    if hit?(card_total)
      card_total += deal_card
      display_card_total(card_total)
    end
  end
  
  end_game(card_total)
end

runner
