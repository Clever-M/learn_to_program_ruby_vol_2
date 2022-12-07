# frozen_string_literal: false

def roman_to_arabic(num)
  num = num.downcase
  numbers = { m: 1000, d: 500, c: 100, l: 50, x: 10, i: 1 }
  possibilities = { cm: 900, cd: 400, xc: 90, xl: 40, ix: 9, iv: 4 }
  arabic = 0

  possibilities.keys.each do |p|
    if num.include? p.to_s
      arabic += possibilities[p]
      num.slice! p.to_s
    end
  end

  num.split('').each do |letter|
    addition = numbers[letter.to_sym]
    return 'not a valid numeral' unless addition

    arabic += addition
  end

  arabic
end

puts roman_to_arabic('Mbatata')
puts roman_to_arabic('MMIV')
puts roman_to_arabic('MDCXLI')
puts roman_to_arabic('MCMXCIX')
