# frozen_string_literal: true

bottles = 99

while bottles != 0
  puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
  bottles -= 1
  if bottles.zero?
    puts 'Take one down and pass it around, no more bottles of beer on the wall.'
  else
    puts "Take one down and pass it around, #{bottles} bottles of beer on the wall."
  end
  puts "\n"
end
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
