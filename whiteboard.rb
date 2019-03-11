require "pry"

puts "FizzBuzz"
# create a loop that goes from 1 to 100
# print each iteration
# if else logic x3 "fizz"
# x5 "buzz"
# x3 and X5 "fizz buzz"

array = []
(1..100).each do |i|
  if i%3 == 0 && i%5 == 0
    array.push("fizz buzz")
  elsif i%3 == 0
    array.push("fizz")
  elsif i%5 == 0
    array.push("buzz")
  else
    array.push(i)
  end
end
puts array.join(", ")

puts ""
puts "Reverse String"
# reverse the string without using .reverse
string = "gnirts a si sihT"
array = []

string.split('').map{|i| array.unshift(i)}
puts array.join('')
