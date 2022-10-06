# frozen_string_literal: true

table_arr = [['Chapter 1: Numbers', 'page 1'],
             ['Chapter 2: Numbers', 'page 5'],
             ['Chapter 3: Numbers', 'page 9']]

puts 'TABLE OF CONTENTS'.center(40)

table_arr.each do |chap_info|
  puts chap_info.first.ljust(20) + chap_info.last.rjust(20)
end
