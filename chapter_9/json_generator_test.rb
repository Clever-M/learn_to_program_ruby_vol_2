# frozen_string_literal: false

require 'json'

def write_file(object, file_name)
  File.open(file_name, 'w') do |f|
    f.write object
  end
end

def read_file_json(file_name)
  read_text = File.read(file_name)

  JSON.parse(read_text)
end

test = [{ language: 'korean', os: 'linux' },
        { language: 'portuguese', os: 'windows' },
        { language: 'english', os: 'linux' }]

write_file(test.to_json, 'test.json')

puts read_file_json('test.json')
