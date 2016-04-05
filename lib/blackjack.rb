def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total = deal_card + deal_card)
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round(total = deal_card + deal_card)
  display_card_total
  return total
end

def hit?(initial_round)
  prompt_user
  input = get_user_input

  if input == "s"
    return initial_round
  end
  if input == "h" then
    total = initial_round += deal_card
    end
end

def invalid_command
  # code invalid_command here
  if get_user_input != 's' || get_user_input !='h' then
    puts "Please enter a valid command"
  end
    prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
    until total >= 21
      total = hit?(total)
  end
 display_card_total(total)
end_game(total)
end

