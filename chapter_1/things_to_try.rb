# frozen_string_literal: false

puts "Hours in an year: #{365 * 24}"

puts "Minutes in a decade: #{(10 * 365 + 2) * 24 * 60}"

puts "My age in seconds: #{28 * 365 * 24 * 60**2} seconds old"

puts "My age in seconds: #{Time.now - Time.gm(1994, 8, 15)} seconds old"

puts "Author's age in second (first book edition): #{800_000_000 / 31_536_000}"

puts "Author's age in second: #{1_390_000_000 / 31_536_000}"
