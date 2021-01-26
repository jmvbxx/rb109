# Create a simple tip calculator. The program should prompt for a bill amount and
# a tip rate. The program must compute the tip and then display both the tip and
# the total amount of the bill.

print 'What is the bill? '
bill = gets.chomp
bill = bill.to_f

print 'What is the tip percentage? '
percentage = gets.chomp
percentage = percentage.to_f

tip = (bill * (percentage / 100)).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{total}"
