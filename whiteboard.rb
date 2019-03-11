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

puts "Sort Check"
# create method called is_sorted
# return true if numbers are sorted

def is_sorted(arr)
  sorted = true
  arr.map.with_index{ |n, i|
    if i > 0; unless n >= arr[i-1]; sorted = false; break end end}
  sorted
end

numbers1 = [1,4,1,2,6,3,3]
numbers2 = [1,2,3,4,5,6,7]
numbers3 = [1,2,3,4,5,4,7]
puts is_sorted(numbers1)
puts is_sorted(numbers2)
puts is_sorted(numbers3)

puts "Bow Wownder Challenge"
# make dog move along an axis \^, v, <, >, diagonally
# dog has to face the correct direction
# dog is class
# methods to turn
# methods to move forward
# return dogs coords

class Dog
  attr_accessor :coords, :facing

  FACING  = ["\^", ">", "v", "<"]

  def initialize()
    @coords = [0,0]
    @facing = "\^"
    @board = Grid.new
    print_board
  end

  def turn(dir)
    if dir == "l"
      @facing = FACING[FACING.index(@facing)-1]
    elsif dir == "r" && @facing == "<"
      @facing = FACING[0]
    else
      @facing = FACING[FACING.index(@facing)+1]
    end
    puts "turn"
    print_board
  end

  def move
    @coords[0] = step(@coords[0]) if ["\^", "v"].include?(@facing)
    @coords[1] = step(@coords[1]) if ["<", ">"].include?(@facing)
    puts "move"
    print_board
  end

  private
  def step(n)
    return n + 1 if ["\^", ">"].include?(@facing); n - 1
  end

  def print_board
    @board.print_grid(@coords, @facing)
  end
end

class Grid
  X = [ -2, -1, 0, 1, 2]
  Y = X.reverse

  def initialize()
    @grid = []
    build_grid
  end

  def print_grid(dc, df)
    place_dog(dc, df)
    @grid.map{|s| print "|#{row(s)}|\n"}
    puts "The dog is at #{dc} and is facing #{df}."
  end

  private
  def build_grid
    @grid = X.map{Y.map{}}
  end

  def place_dog(dc, df)
    @grid[Y.index(dc[0])][X.index(dc[1])] = df
  end

  def row(s)
    row = []
    s.each do |a|
      unless a
        row.push(" ")
      else
        row.push(a)
      end
    end
    row.join("|")
  end
end

dulce = Dog.new
dulce.move
dulce.turn("r")
dulce.move
dulce.turn("r")
dulce.move
dulce.turn("l")
dulce.move
dulce.turn("r")
dulce.move
dulce.turn("r")
dulce.move
dulce.move
dulce.move
