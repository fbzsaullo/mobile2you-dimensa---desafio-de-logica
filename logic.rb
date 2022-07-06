expression = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'

diamonds = 0

sand = expression.count('.')
expression = expression.delete('.')

while expression.scan(/<>/).count > 0
  extract = expression.scan(/<>/).count
  diamonds += extract
  expression = expression.gsub(/<>/, '')
end

puts 'Nothing more to mine.'
puts "Found diamonds: #{diamonds}"
