############################################################
#
# Name:        Sean Kanaley
# Assignment:  Payroll Application
# Date:        1/18/2017
# Class:       CIS 282
# Description: Ask for user input to create a pay-stub for the user
#
############################################################

print "Enter employee's name: "
employee_name = gets.chomp
print "Enter number of hours worked in a week: "
hours_worked = gets.to_f
print "Enter hourly pay rate: "
hourly_pay_rate = gets.to_f
print "Enter federal tax withholding rate: "
federal_tax_rate = gets.to_f
if federal_tax_rate > 1.0
  federal_tax_rate = federal_tax_rate / 100
end
print "Enter state tax withholding rate: "
state_tax_rate = gets.to_f
if state_tax_rate > 1.0
  state_tax_rate = state_tax_rate / 100
end
gross_pay = hours_worked * hourly_pay_rate
federal_withholding = gross_pay * federal_tax_rate
state_withholding = gross_pay * state_tax_rate
total_deduction = federal_withholding + state_withholding
net_pay = gross_pay - total_deduction

puts "Employee Name: #{employee_name}"
puts "Hours Worked: #{hours_worked}"
puts "Pay Rate: $" + format("%.2f", hourly_pay_rate )
puts "Gross Pay: $" + format("%.2f", gross_pay )
puts "Deductions: "
puts "  Federal Witholding (" + format("%.2f", federal_tax_rate * 100 ) + "%): $" + format("%.2f", federal_withholding)
puts " State Witholding (" + format("%.2f", state_tax_rate * 100 ) + "%): $" + format("%.2f", state_withholding)
puts "  Total Deduction: $" + format("%.2f", total_deduction )
puts "Net Pay: $" + format("%.2f", net_pay)

