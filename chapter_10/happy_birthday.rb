# frozen_string_literal: false

puts 'In what year you where born?'
year = gets.chomp

puts 'In what month you where born?'
month = gets.chomp

puts 'In what day you where born?'
day = gets.chomp

birthday = Time.new(year, month, day)
today = Time.now

if birthday.month < today.month
  yo = today.year - birthday.year
elsif birthday.month == today.month
  yo = birthday.day <= today.day ? today.year - birthday.year : today.year - birthday.year - 1
else
  yo = today.year - birthday.year - 1
end

print "#{'☺' * yo} \n"
