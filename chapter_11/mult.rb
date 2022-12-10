class Array
  def mult
    inject(:*)
  end
end

puts [2, 4, 5, 10, 34].mult
puts [40, 35, 100].mult
