# frozen_string_literal: false

a = 'abcde'
b = 'fahij'

new_string = []
index_a = index_b = 0

while index_a < a.length || index_b < b.length
  new_string << a[index_a]
  assigned = false
  while !assigned && index_b < b.length
    if new_string.last < b[index_b]
      new_string << b[index_b]
      assigned = true
    end
    index_b += 1
  end
  index_a += 1
end

puts new_string.join
