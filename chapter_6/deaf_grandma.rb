# frozen_string_literal: true

question = ''

while question != 'BYE'
  puts 'Ask grandma'
  question = gets.chomp

  if question == question.upcase
    puts "> No! Not since #{rand(1930..1950)}"
  else
    puts '> HUH?! SPEAK UP, SONNY'
  end
end
