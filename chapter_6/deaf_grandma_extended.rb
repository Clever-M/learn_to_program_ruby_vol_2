# frozen_string_literal: true

question = ''
bye_times = 3

until bye_times.zero?
  puts 'Ask grandma'
  question = gets.chomp

  if question == question.upcase && question != 'BYE'
    puts "> No! Not since #{rand(1930..1950)}"
    bye_times = 3
  else
    puts '> HUH?! SPEAK UP, SONNY'
    if question == 'BYE'
      bye_times -= 1
    else
      bye_times = 3
    end
  end
end
