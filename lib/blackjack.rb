def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  num = rand(1..11)
  num
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
  input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  first = deal_card
  second = deal_card
  card_total = first + second
  display_card_total(card_total)
  return card_total
end

def hit?(number)
  # code hit? here
  prompt_user
  choice = get_user_input
  if choice == 'h'
    update = deal_card
    
  elsif choice != "h" || choice != "s"
    invalid_command
  end
  new_card_total = number.to_i + update.to_i
return new_card_total
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  until total > 21
  total = hit?(total)
  display_card_total(total)
end
end_game(total)
end
    
