############################################################
#
# Name:        Sean Kanaley
# Assignment:  Right Triangle Part 2
# Date:        1/24/2017
# Class:       CIS 282
# Description: Ask for user input in various scenarios to create shapes with strings and numbers.
#
############################################################

puts "Let's create a right triangle"
puts "What should the height of the triangle be?: "
triangle_height = gets.to_i

row = 1
while row <= triangle_height
  1.upto(row) do |x|
    print x
  end
  puts
  row += 1
  end

