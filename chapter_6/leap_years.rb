# frozen_string_literal: true

puts 'start year:'
start_year = gets.chomp.to_i
puts 'end year:'
end_year = gets.chomp.to_i

while start_year <= end_year
  if (start_year % 4).zero? && !(start_year % 100).zero?
    puts start_year
  elsif (start_year % 400).zero?
    puts start_year
  end
  start_year += 1
end
