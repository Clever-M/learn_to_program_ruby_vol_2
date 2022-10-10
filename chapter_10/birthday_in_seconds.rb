# frozen_string_literal: false

birthday = Time.new(1994, 8, 15, 3, 30)
puts "I was born at the second #{birthday.to_i}"

puts "I'll turn 1 billion years old in #{birthday + 10**9}"
