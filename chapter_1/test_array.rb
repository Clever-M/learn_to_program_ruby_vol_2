# frozen_string_literal: false

fruit_prices = ['banana', 3, 'apple', 4]

hash_price = fruit_prices.map.with_index do |_, i|
  [fruit_prices[i], fruit_prices[i + 1]] if i.even?
end

puts hash_price.compact.to_h
puts 'tell you age:'

age = gets

puts "Your age is #{age}"