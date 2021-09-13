def input
  File.read('input.txt').split("\n").map { |pattern| pattern.split(' ') }
end

def password_matches
  correct_passwords = []
  input.each do |pwd|
    range = pwd[0].split('-').map(&:to_i)
    letter = pwd[1][0]
    password = pwd[2].chars.count { |l| l == letter }
    correct_passwords << pwd if password >= range[0] && password <= range[1]
  end
  correct_passwords.count
end

puts password_matches if __FILE__ == $PROGRAM_NAME
