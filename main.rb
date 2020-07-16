require_relative './lib/caesar.rb'
puts
puts "YOUR FRIENDLY NEIGHBORHOOD CAESAR CIPHER.".center(80)
puts
cipher_again = true
user_response = nil

while cipher_again
  print "Enter some text you would like to cipher: "
  string_to_cipher = gets.chomp
  print "What key would you like to use to cipher it? "
  shift_factor = gets.chomp.to_i
  puts
  ciphered_text = caesar_cipher(string_to_cipher, shift_factor);
  puts "Here you go ;) -----> #{ciphered_text}"
  puts "Make sure your key doesn't fall into the wrong hands."
  puts
  until user_response == 'yes' || user_response == 'no' 
    puts "Would you like to cipher again? Yes/No"
    user_response = gets.chomp.downcase
  end

  break puts "\nHave a good one!" if user_response == 'no'
  user_response = nil
end