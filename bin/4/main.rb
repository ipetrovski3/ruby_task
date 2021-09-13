VALID_KEYS = %w[byr iyr hcl hgt eyr ecl pid].freeze

def input
  File.read('input.txt').split("\n\n").map { |i| i.split(' ') }
end

def array_to_hash
  new_array = []
  input.each do |doc|
    to_hash = doc.map do |s|
      s.split(':')
    end
    new_array << to_hash.to_h
  end
  new_array
end

def count_valid
  valid_documents = []
  array_to_hash.each do |document|
    valid_documents << document if VALID_KEYS.all? { |s| document.key? s }
  end
  valid_documents
end

puts count_valid.size if __FILE__ == $PROGRAM_NAME

# output = 182
