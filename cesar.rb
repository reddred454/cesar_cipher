puts 'Input text'
text = gets.chomp

puts 'Input shifts'
shifts = gets.to_i % 26

output = ''

text.each_char do | str |
  if str =~ /[A-Z]/
    shifted = (str.ord - 65 + shifts) % 26
    if shifted < 26
      shifted += 26
    end
    output += (shifted + 65 ).chr
  end
end

puts 'Result'
puts output