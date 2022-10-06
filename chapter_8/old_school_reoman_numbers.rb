# frozen_string_literal: false

def convert_to_roman(num)
  i = 1000
  j = i / 2
  roman = %w[M D C L X V I].map do |r_number|
    if r_number == 'M'
      converted = r_number * (num / 1000)
    else
      converted = r_number * (num % i / j)
      i, j = j, i / 10
    end
    converted
  end

  roman.compact.join
end

puts convert_to_roman(3995)
