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

puts "💉 Coronavirus Survival Game 💉\n"

puts "Your alarm goes off and theres an alert on your phone of an awful pandemic sweeping across the nation. You look around and see you're missing supplies. You must get these items to survive: mask, hand sanitizer, toilet paper, vitimans, water"
sleep 0.02
def start_game
  "
  @@@@@@@@@@
 @@        @@
 @  O    O  @
(|          |)
 |     ^    |
 |  \____/  |
  \        /
   `------'
  whats your name?\n".each_char do | value |
      putc value
      sleep 0.02
    end
    puts
    gets.chomp
end

def name_option name
  "Hurry up #{name}! You're running out of time.\n".each_char do | value |
    putc value
    sleep 0.02
  end
end


def leave_house name
  "You check your phone to see what's around. Costco is the closest. There's a bar a little further out. And the furthest is CVS. Here are the 3 nearest locations you can choose from:
  1 - go to Costco
  2 - go to the bar
  3 - go to CVS\n".each_char do | value |
  putc value
  sleep 0.02
  end
  puts
  gets.chomp
end



def costco
  #   there is a long line so you have two more options. "wait in line" or "go to cvs"
  # #wait in line - you get inside and get your item but get your item stolen so you must go to cvs.
  "You arrived at Costco, and you see a line that wraps around the building. Do you want to wait in line?
  1 - Go to CVS
  2 - Go to Bar
  3 - wait in line to get into Costco\n".each_char do | value |
    putc value
    sleep 0.02
    end
  puts
  num = gets.chomp

  if num == "1"
    cvs
  elsif num == "2"
    bar
  elsif num == "3"
    "You go through the store and cannot find any of the items. You arrive at the back of the warehouse where there is one pack of toiler paper left and you put it in your cart. You fall in line for checkout, and a strange man comes out of nowhere and takes the toilet paper from your cart. What do you want to do now?
    1 - Go to CVS
    2 - Go to bar\n".each_char do | value |
    putc value
    sleep 0.02
    end
    # Choose between 1 - CVS or 2 - Bar
    puts
    num = gets.chomp
    if num == "1"
      cvs
    elsif num == "2"
      bar
    end
  end
  # puts
  # gets.chomp
end

def cvs
  "You arrived at CVS and decide to go in. You find the ~masks~ you were looking for, but they don't have anything else. You fall in line to purchase the item and overhear a conversation between other customers. One says 'I hear Walmart has a bunch of supplies'. You acquire the masks and are ready to try to find the rest of the items. Where would you like to go?
  1 - Walmart
  2 - Target
  3 - Bodega\n".each_char do | value |
    putc value
    sleep 0.02
    end
  puts
  num = gets.chomp

  if num == "1"
    walmart
  elsif num == "2"
    target
  elsif num == "3"
    bodega
  end
end

def bar
  puts "You went to the bar and have given up on your search for the items. You return home empty-handed. You'll try again tomorrow."
end

def walmart
  "You arrived at Walmart. The customers are getting rowdy and a brawl breaks out. The police come and shut down the store. Where would you like to go?
  1 - Target
  2 - Bodega\n".each_char do | value |
    putc value
    sleep 0.02
    end
  puts
  num = gets.chomp

  if num == "1"
    target
  elsif num == "2"
    bodega
  end
end

def target
  "You arrived at Target. You look through all the aisles and only find hand sanitizer. You go through self-checkout without any trouble, but you're still missing a few items. It's getting late, and the only place open is the nearby bodega.\n".each_char do | value |
    putc value
    sleep 0.02
    end
  
  bodega
end

def bodega
  "You arrived at the bodega. It must be your lucky day! They have all the items you were looking for except for toiler paper. On your way to your car a stranger calls out to you, 'Hey, I overheard you saying you need toiler paper. Take a look at what I got.' The stranger looks awfully familiar... What would you like to do?
    1 - Buy toilet paper from shady character
    2 - Steal toilet paper
    3 - Walk away and call it a day\n".each_char do | value |
    putc value
    sleep 0.02
    end

  # Choose between 1 - buy, 2 - steal, 3 - walk away
  puts
  num = gets.chomp

  if num == "1"
    #buying
    "The shady man says 'Great! I have a great deal for you! One roll is only $30' You check your wallet and you only have $5 left. What would you like to do?
    1 - Steal toilet paper
    2 - Walk away and call it a day\n".each_char do | value |
    putc value
    sleep 0.02
    end
    # Choose between 1 - steal or 2 - walk away
    puts
    num = gets.chomp

    if num == "1"
      steal_tp
    elsif num == "2"
      #restart game
      "You decide to give up on your search for toilet paper. You head home to try again another day.\n".each_char do | value |
      putc value
      sleep 0.02
      end
    end
  elsif num == "2"
    #stealing
    steal_tp
  elsif num == "3"
    #restart game
    "You decide to give up on your search for toilet paper. You head home to try again another day.\n".each_char do | value |
      putc value
      sleep 0.02
      end
  end
end

def steal_tp
  "You grab the toilet paper and try to make a run for it. The shady man grabs your ankle and you trip. What do you want to do?
    1 - Don't Fight
    2 - Fight
    3 - Kick him in the face and walk away\n".each_char do | value |
    putc value
    sleep 0.02
    end

  # Choose between 1 - fight, 2 - don't fight, 3 - walk away
  puts
  num = gets.chomp
  
  if num == "1"
    #restart game
    "The man takes all of your items... You'll have to try again tomorrow.\n".each_char do | value |
    putc value
    sleep 0.02
    end
  elsif num == "2"
    fight
  elsif num == "3"
    "You kick the man in the face and are able to escape with the items you bought. You decide to try again tomorrow.\n".each_char do | value |
      putc value
      sleep 0.02
      end
  end
end

def fight
  "You beat the SHIT out of the shady man. You hang your head high, and snatch his full supply. You head home victorious, ready to survive the awful pandemic.
    .--'""""""""""`--. 
  ,'     .------.     `,
  :     (        )     :
  |\     `------'     /|
  | `--.__________,--' |
  |          /         |
  |          \         |
  |          /         |
  |          \         |
  |          /         |
  |          \         |
  |          /         |
  |          \         |
  |          /         |
  |          \         |
  `.         /        .'
    `--._____\____,--'   
\n"
.each_char do | value |
    putc value
    sleep 0.02
    end
  exit
end

def super_fight

end

def store_type num
  if num == "1"
    costco
  elsif num == "2"
    bar
  elsif num == "3"
    cvs
  end
end


gameover = false

while gameover == false
  player_name = start_game
  awake = name_option player_name
  first_choice = leave_house player_name
  location = store_type first_choice
end