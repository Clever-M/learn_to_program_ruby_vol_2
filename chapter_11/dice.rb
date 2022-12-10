class Die
  def initialize(sides = 6)
    sides = 6 if sides < 3
    roll(sides.to_i)
  end

  def roll(sides)
    @result = 1 + rand(sides)
  end

  def show_result
    @result
  end
end

puts Die.new(2.5).show_result
puts Die.new.show_result
puts Die.new(10.5).show_result
