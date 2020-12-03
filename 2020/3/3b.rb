class RouteFinder
  def initialize
    @lines = File.readlines(File.join(__dir__, 'input.txt'))
  end

  attr_accessor :lines

  def trees_on_route(right, down)
    trees = 0
    line_length = lines.first.length - 1
    x = 0
    lines.each_with_index do |line, y|
      next if y % down !=0
      trees += 1 if line[x % line_length] == '#'
      x += right
    end
    trees
  end
end

rf = RouteFinder.new
combos = [[1,1], [3,1], [5,1], [7,1], [1,2]]
puts combos.inject(1) { |product, a| product * rf.trees_on_route(a[0], a[1]) }
