require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(c_ttl)
  puts "Your cards add up to #{c_ttl}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(x)
  puts "Sorry, you hit #{x}. Thanks for playing!"
end

def initial_round
  ttl = 0
  if ttl
  ttl += deal_card + deal_card
  print display_card_total(ttl)
  end
  return ttl
end

def hit? (number)
ttl = number
prompt_user
g = get_user_input
  if g == "h"
  ttl += deal_card
  elsif g == "s"
  ttl
  else invalid_command
    prompt_user
    g = get_user_input
  end
  ttl
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome #introduce the game
  sleep 0.75
  card_total = initial_round #determine your current total & tell user what number they currently have
  until card_total > 21 #continue game until user loses
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total) #prints out once user has lost
end

