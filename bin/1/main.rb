def input
  File.read('input.txt').scan(/\d+/).map(&:to_i)
end

def find_match
  input.combination(2).detect { |one, two| one + two == 2020 }.reduce(:*)
end

puts find_match if __FILE__ == $PROGRAM_NAME
