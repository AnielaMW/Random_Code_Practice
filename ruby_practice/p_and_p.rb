require 'pry'

puts "Pride and Prejudice Logic"

# It is a truth universally acknowledged, that a single man in possession of a good fortune, must be in want of a wife.

class Man
  attr_reader :truth

  def initialize (name, single, fortune)
    @fortune = fortune
    @single = single
    @truth = "Mr. #{name} " + self.acknowledge
  end

  def acknowledge
    @single && @fortune.include?("good") ? "want's a wife" : "does not want a wife."
  end
end

men = [["Darcy", true, "good income"],
       ["Bingley", true, "good will toward all and a good income"],
       ["Collins", true, "good patroness"],
       ["Wickham", true, "good luck as a good liar"],
       ["Denny", true, "charming gentleman"],
       ["Bennet", false, "good humor"]]

men.each { |man| puts Man.new(man[0], man[1], man[2]).truth }
