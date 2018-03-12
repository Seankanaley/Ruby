############################################################
#
# Name:        Sean Kanaley
# Assignment:  Header Comment Output
# Date:        1/18/2017
# Class:       CIS 282
# Description: Ask for user input to create a standard header comment for files
#
############################################################

print "Name: "
user_name = gets.chomp
print "Date: "
date = gets.chomp
print "Assignment: "
assignment = gets.chomp
print "Class Number: "
class_number = gets.chomp
print "Description of Assignment: "
assignment_description = gets.chomp

puts "#"*60
puts "#"
puts "# Name:        " + user_name
puts "# Assignment:  " + assignment
puts "# Date:        " + date
puts "# Class:       " + class_number
puts "# Description: " + assignment_description
puts "#"
puts "#"*60