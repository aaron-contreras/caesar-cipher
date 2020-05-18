def shift(base_value, range, ascii_letter, shift_factor)
  raw_shifts = ascii_letter - base_value + shift_factor
  net_shifts = (raw_shifts % range + range) % range
  shifted_letter = (base_value + net_shifts).chr
end

def caesar_cipher(string, shift_factor)
  uppercase = /[A-Z]/
  lowercase = /[a-z]/
  digit = /[0-9]/
  letters = string.chars
  shifted_string = letters.map do |letter|
    if letter.match? uppercase
      shift(65, 26, letter.ord, shift_factor)
    elsif letter.match? lowercase
      shift(97, 26, letter.ord, shift_factor)
    elsif letter.match? digit
      number = shift(48, 10, letter.ord, shift_factor)
    else
      letter
    end
  end.join
end

#########################

puts
puts "YOUR FRIENDLY NEIGHBORHOOD CAESAR CIPHER.".center(80)
puts
print "Enter some text you would like to cipher: "
string_to_cipher = gets.chomp
print "What key would you like to use to cipher it? "
shift_factor = gets.chomp.to_i
puts
print "Here you go ;) -----> "
puts caesar_cipher(string_to_cipher, shift_factor)
puts
puts "Make sure your key doesn't fall into the wrong hands."