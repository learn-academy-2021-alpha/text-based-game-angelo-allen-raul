#survival coronavirus quarantine, masks, social distancing, vaccine, household goods,
#start with one mask - have to go out and buy goods and loose a mask.
#wake up with only 1 mask. then have to head out to the store(news is on mad frenzy to go to the stores to get supplies) goal is to get all the ietms
#have 3 options to pick from - costco, cvs, bar(done)
#start off with a set dollar amount. Allowance. use money to buy stock. live off of savings
#encountering the virus puts you back to quarantine so you cannot get supplies. left with what you have.
#survive long enough until the vaccine is available. OR restock on all items you get to go home!
#fetch items to survive. masks, hand sanitizer, toilet paper, vitimans, water
#one trip to get all the items and win the game.
#"first question" - what store would you like to go to? bar, costco
#bar - you risk getting the virus and have to go back to the start.
#costco - there is a long line so you have two more options. "wait in line" or "go to cvs"
#wait in line - you get inside and get your item but get your item stolen so you must go to cvs.
#go to cvs - look for limited items only items are masks, beer, wine (dice function to determine what they get)
#masks - allow you to continue
#beer - the pandemic doesnt look so bad so you decide to have a beer, back to start.
#wine - the pandemic doesnt look so bad so you decide to have a glass, back to start.
#waiting in line at checkout you hear a customer say walmart has the item you are looking for - walmart or target or bodega
#walmart - thers a fight at walmart so your forced to go to target
#target - has hand sanitizer forced to go to the bodega
#bodega - has all the items but toilet paper and spend on all your money.
#on the way back to the car user runs into the theif that took all the toilet paper and is selling it behind bodega.
#you can buy the toilet paper but its crazy expensive.back OR steal it from him but have to fight and you win the fight.
#buy - its crazy expensive so youre forced to steal it
#walk away - restart game(your weak go home and restart)
#steal - by stealing it you are now forced to fight.
#you can fight or not fight
#fight - you win the toilet paper and the game.
#dont fight - he takes all your items and youre forced to restart the game.
#walk away - restart game

puts "Your alarm goes off and theres an alert on your phone of an awful pandemic sweaping across the nation and you must get these items to survive: mask, hand sanitizer, toilet paper, vitimans, water"
sleep 0.01
def start_game
  "whats your name?\n".each_char do | value |
      putc value
      sleep 0.01
    end
    puts
    gets.chomp
end

player_name = start_game

def name_option name
  "hurry up #{name}!\n".each_char do | value |
    putc value
    sleep 0.01
  end
end

awake = name_option player_name

def leave_house name
  "here are the 3 nearest locations you can choose from:
  1 - go to Costco
  2 - go to CVS
  3 - go to the bar\n".each_char do | value |
  putc value
  sleep 0.01
  end
  puts
  gets.chomp
end

first_choice = leave_house player_name


def store_type num
  if num == "1"
    "costco has a line and now you have two options:
    1 - go to bar
    2 - go to cvs\n".each_char do | value |
    putc value
    sleep 0.01

  end
  elsif num == "2"
    "go to cvs\n".each_char do | value |
    putc value
    sleep 0.01
  end
  elsif num == "3"
    "you went to the bar now you have to restart\n".each_char do | value |
    putc value
    sleep 0.01
  end
  puts
  gets.chomp
  end
end

location = store_type first_choice



# puts "Youre at costco there is a long line so you have two more options:
# 1 - wait in line
# 2 - go to cvs"
# sleep 0.01
# def second_choice
#   if num == "1"
#     "wait in line\n".each_char do | value|
#       putc value
#       sleep 0.01
#     end
#     puts
#     gets.chomp
# end
# end
# second_choice
