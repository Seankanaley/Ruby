############################################################
#
# Name:        Sean Kanaley
# Assignment:  Right Triangle Part 1
# Date:        1/24/2017
# Class:       CIS 282
# Description: Ask for user input in various scenarios to create shapes with strings and numbers.
#
############################################################

puts "Let's create a right triangle"
puts "What should the height of the triangle be?: "
triangle_height = gets.to_i
1.upto(triangle_height) do |x|
  x.times { print " *" }
  puts
end