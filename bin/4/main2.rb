require './main'
require 'pry'

NEW_VALIDATION = {
  'byr' => /^(19[2-9][0-9]|200[0-2])$/,
  'iyr' => /^20(1[0-9]|20)$/,
  'eyr' => /^20(2[0-9]|30)$/,
  'hgt' => /^(1([5-8][0-9]|9[0-3])cm|(59|6[0-9]|7[0-6])in)$/,
  'hcl' => /^#[0-9a-f]{6}$/,
  'ecl' => /^(amb|blu|brn|gry|grn|hzl|oth)$/,
  'pid' => /^[0-9]{9}$/
}.freeze

def filter_documents
  valid_documents = []
  array_to_hash.each do |document|
    valid_documents << document if VALID_KEYS.all? { |f| NEW_VALIDATION[f].match(document[f]) }
  end
  valid_documents
end

puts filter_documents.size
