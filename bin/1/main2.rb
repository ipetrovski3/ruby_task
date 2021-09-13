require './main'

def find_match
  input.combination(3).detect { |one, two, three| one + two + three == 2020 }.reduce(:*)
end

puts find_match
