require 'pry'

puts "Pride and Prejudice Logic"

# It is a truth universally acknowledged, that a single man in possession of a good fortune, must be in want of a wife.

class Man
  attr_reader :truth

  def initialize (name, single, fortune)
    @fortune = fortune
    @name = name
    @single = single
    @truth = "Mr. #{@name} " + self.acknowledge
  end

  def acknowledge
    @single && @fortune.include?("good") ? "want's a wife" : "does not want a wife."
  end
end

darcy = Man.new("Darcy", true, "good income")
puts darcy.truth
bingley = Man.new("Bingley", true, "good will toward all and a good income")
puts bingley.truth
collins = Man.new("Collins", true, "good patroness")
puts collins.truth
wickham = Man.new("Wickham", true, "good luck as a good liar")
puts wickham.truth
denny = Man.new("Denny", true, "charming gentleman")
puts denny.truth
Bennet = Man.new("Bennet", false, "good humor")
puts Bennet.truth
