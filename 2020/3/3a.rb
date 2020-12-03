lines = File.readlines(File.join(__dir__, 'input.txt'))
lines.map(&:strip)
trees = 0
line_length = lines.first.length - 1
x = 0
lines.each do |line|
  pp line
  puts x % line_length
  puts line[x % line_length]
  trees += 1 if line[x % line_length] == '#'
  x += 3
end

puts trees