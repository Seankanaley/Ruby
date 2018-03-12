############################################################
#
# Name:        Sean Kanaley
# Assignment:  Right Triangle Extra Credit 2
# Date:        1/24/2017
# Class:       CIS 282
# Description: Ask for user input in various scenarios to create shapes with strings and numbers.
#
############################################################

puts "How tall should the diamond be?: "
height = gets.to_i
1.upto(height) do |x|
  x.upto(height - 1) { print " " }
  x.times { print " *" }
  puts
end
height = height - 1
height.downto(1) do |x|
  x.upto(height) { print " " }
  x.times { print " *" }
  puts
end
