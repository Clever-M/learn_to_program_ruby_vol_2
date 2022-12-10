class String
  def leet
    letters = { a: '/\\', b: '13', c: '(', d: '[)', e: '3', f: '|=', g: '6',
                h: '|-|', i: '1', j: '.]', k: '|<', l: '|', m: '|Y|', n: 'N',
                o: 0, p: '|>', q: '0,', r: '|2', s: '5', t: '7', u: 'Ü', v: '\/',
                w: '\\v/', x: '}{', y: '`/', z: '2' }

    leeted = split('').map do |char|
      letters[char.downcase.to_sym] || char
    end

    leeted.join
  end
end

puts 'Austin'.leet
puts 'Ronni'.leet
puts 'Jonny Cage'.leet
