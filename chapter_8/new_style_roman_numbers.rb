# frozen_string_literal: false

def convert_new_style_roman_number(num)
  converted = ''

  converted << 'M' * (num / 1000)
  converted << roman_specific_cases(num, 1000, 'CM', 'CD')
  converted << roman_specific_cases(num, 100,  'XC', 'XL')
  converted << roman_specific_cases(num, 10,   'IX', 'IV')

  converted
end

def roman_specific_cases(num, multiple, case_nine, case_four)
  number = ''
  is_nine_or_four = nine_or_four?(num, multiple)

  if is_nine_or_four
    number += is_nine_or_four == 9 ? case_nine : case_four
  else
    number << case_four[1] * (num % multiple / (multiple * 5 / 10))
    number << case_four[0] * (num % (multiple * 5 / 10) / (multiple / 10))
  end

  number
end

def nine_or_four?(num, multiple)
  decide = num % multiple / (multiple / 10)
  return decide if [9, 4].include?(decide)

  nil
end

puts convert_new_style_roman_number(1994)

puts convert_new_style_roman_number(752)

puts convert_new_style_roman_number(103)

puts convert_new_style_roman_number(3)

puts convert_new_style_roman_number(2004)
