############################################################
#
# Name:        Sean Kanaley
# Assignment:  Rock Paper Scissors
# Date:        1/30/2017
# Class:       CIS 282
# Description: Create a game of rock, paper, scissors, lizard, Spock. Where the computer randomly picks and the player chooses.
# Outputs the results of the match after each round. Outputs statistics for all games when player decides to end their session
#
############################################################
menu = [
    "Rock",
    "Paper",
    "Scissors",
    "Quit"
]

puts "Hey! Do you want to play Rock, Paper, Scissors?"
print "The rules are Scissors beats paper, paper beats rock and rock beats paper.
You just choose one, I choose randomly and we compare to see who wins."
puts
decision = ""
while (decision != 'Y' && decision != 'N')
  puts "Y for Yes, N for No"
  decision = gets.chomp.upcase
end

if decision == 'Y'
  puts "Great let's play"
elsif decision == 'N'
  abort("Ah too bad, maybe next time")
else
 puts "Sorry I didn't recognize that, Y for Yes or N for No please!"
end

npc = rand(1..3)
wins = 0
losses = 0
ties = 0
user_choice = 0

while user_choice != 4
  menu.each_with_index do |item, item_number|
    puts "#{item_number + 1}. #{item}"
  end

  puts "Which do you choose? "
  user_choice = gets.to_i
  if (user_choice == 1) && (npc == 2) || (user_choice == 2) && (npc == 3) || (user_choice == 3) && (npc == 1)
    puts "Computer chose #{npc}"
    puts "You Chose #{user_choice}"
    puts "you lose!"
    losses += 1
    puts "Wins: #{wins}, Losses #{losses}, Ties: #{ties}"
    puts
  elsif (user_choice == 2) && (npc == 1) || (user_choice == 3) && (npc == 2) || (user_choice == 1) && (npc == 3)
    puts "Computer chose #{npc}"
    puts "You Chose #{user_choice}"
    puts "you Win!"
    wins += 1
    puts "Wins: #{wins}, Losses #{losses}, Ties: #{ties}"
    puts
  elsif (user_choice == 1) && (npc == 1) || (user_choice == 2) && (npc == 2) || (user_choice == 3) && (npc == 3)
    puts "Computer chose #{npc}"
    puts "You Chose #{user_choice}"
    puts "you Tied!"
    ties += 1
    puts "Wins: #{wins}, Losses #{losses}, Ties: #{ties}"
    puts
  else
    break
    end
end

puts "Wins: #{wins}, Losses #{losses}, Ties: #{ties}"




