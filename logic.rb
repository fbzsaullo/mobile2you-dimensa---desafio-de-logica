expression = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'

# extrair as areias
sand = expression.count('.')
expression = expression.delete('.')

# extrair os diamentes
diamonds = 0

while expression.scan(/<>/).count > 0
  extract = expression.scan(/<>/).count
  diamonds += extract
  expression = expression.gsub(/<>/, '')
end

# quantidade de diamantes
puts "Diamonds #{diamonds}"
