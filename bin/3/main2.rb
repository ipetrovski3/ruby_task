require './main'

PATHS = [[1, 1], [3, 1], [5, 1], [7, 1], [1, 2]].freeze

puts PATHS.map { |direction_x, direction_y|
  x_axis = 0
  y_axis = 0
  trees = 0

  while y_axis < input.size - 1
    x_axis += direction_x
    x_axis %= input[0].size
    y_axis += direction_y

    trees += 1 if input[y_axis][x_axis] == '#'
  end

  trees
}.reduce(&:*)
