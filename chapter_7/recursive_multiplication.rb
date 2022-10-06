# frozen_string_literal: true

def multiply(factor_x, factor_y)
  return factor_x if factor_y == 1

  factor_x + multiply(factor_x, factor_y - 1)
end

puts "100 X 3 -> #{multiply(100, 3)}"
puts "3 X 100 -> #{multiply(3, 100)}"
