require './main'

def password_matches
  correct_passwords = []
  input.each do |pwd|
    position = pwd[0].split('-').map(&:to_i)
    first_position = position[0] - 1
    second_position = position[1] - 1
    leter = pwd[1][0]
    password = pwd[2]
    next if password[first_position] == leter && password[second_position] == leter

    correct_passwords << pwd if password[first_position] == leter || password[second_position] == leter
  end
  correct_passwords.count
end

puts password_matches
