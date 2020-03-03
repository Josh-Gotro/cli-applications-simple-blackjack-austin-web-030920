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

def runner(ttl)
  t += ttl
welcome 
initial_round
hit?(t)
get_user_input
if "s"
  hit?
  elsif "h"
  

end
end

  i = 0
until i == 5
   puts i
   i += 1
end  
