require "pry"

# create a loop that goes from 1 to 100
# print each iteration
# if else logic x3 "fizz"
# x5 "buzz"
# x3 and X5 "fizz buzz"

(1..100).each do |i|
  if i%3 == 0 && i%5 == 0
    puts "fizz buzz"
  elsif i%3 == 0
    puts "fizz"
  elsif i%5 == 0
    puts "buzz"
  else
    puts i
  end
end
