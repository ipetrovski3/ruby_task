require 'pry'

def input
  File.read('input.txt').split("\n").map { |i| i.split('') }
end

y_axis = 0
x_axis = 0

trees = 0

direction_y = 1
direction_x = 3

while y_axis < input.size - 1
  x_axis += direction_x
  x_axis %= input[0].size
  y_axis += direction_y
  trees += 1 if input[y_axis][x_axis] == '#'
end

puts trees if __FILE__ == $PROGRAM_NAME
