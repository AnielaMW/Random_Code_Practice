require 'pry'

num1 = 1122 #=> 3
num2 = 8182759778 #=>15
num3 = 12345 #=>0

def captcha1(num)
  list = num.to_s.split('').map(&:to_i)
  total = 0

  list.each_with_index do |num, i|
    total += compare_em(num, list[i+1])
  end

  total += compare_em(list[-1], list[0])

  return total
end

def captcha2(num)
  list = num.to_s.split('').map(&:to_i)
  total = 0

  iterate_arr(0, list, total)
end

def iterate_arr(i, list, total)
  if i == (list.length - 1)
    total += compare_em(list[i], list[0])
    return total
  else
    total += compare_em(list[i], list[i+1])
    iterate_arr(i+1, list, total)
  end
end

def compare_em(num, next_num)
  num == next_num ? num : 0
end

def captcha3(number)
  list = number.to_s.split('').map(&:to_i)
  list << list.first

  #In one line-ish
  (0..(list.size - 2)).map { |index| (a, b) = list.slice(index, 2) ; a == b ? a : 0}.inject(0, &:+)
  # (0.. #range starting at index 0
  #   (list.size - 2) #ending at the size of the list - 2 (aka -2) the second to last indexed place
  #   # for num1 => [0, 1]
  #   #Why the second to last????
  # ).map { |index| #map over each index
  #   # index => 0 list => 1122
  #   (a, b) = list.slice(index, 2)
  #   #a should equal the list[index] and the slice should call the list[next_index]
  #   #But slice isn't working, there is an error.
  #     #codesample.rb:58:in `block in captcha4': undefined method `slice' for 1122:Integer (NoMethodError)
  #     #This is calling slice on and integer not on the mapped array of
  #   a == b ? a : 0 #if else logic for the compare
  # }.inject(0, &:+) #inject adds each item from the map to get the total.
end

puts 'Captcha1'
puts captcha1(num1) == 3
puts captcha1(num2) == 15
puts captcha1(num3) == 0
puts 'Captcha2'
puts captcha2(num1) == 3
puts captcha2(num2) == 15
puts captcha2(num3) == 0
puts 'Captcha3'
puts captcha3(num1) == 3
puts captcha3(num2) == 15
puts captcha3(num3) == 0
