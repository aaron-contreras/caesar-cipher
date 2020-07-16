# frozen_string_literal: true

def shift(base_value, range, ascii_letter, shift_factor)
  raw_shifts = ascii_letter - base_value + shift_factor
  net_shifts = (raw_shifts % range + range) % range
  (base_value + net_shifts).chr
end

def character_types
  {
    uppercase: /[A-Z]/,
    lowercase: /[a-z]/,
    digit: /[0-9]/
  }
end

def shifted_character(letter, shift_factor)
  ascii_letter = letter.ord

  if letter.match? character_types[:uppercase]
    shift(65, 26, ascii_letter, shift_factor)
  elsif letter.match? character_types[:lowercase]
    shift(97, 26, ascii_letter, shift_factor)
  elsif letter.match? character_types[:digit]
    shift(48, 10, ascii_letter, shift_factor)
  else
    letter
  end
end

def caesar_cipher(string, shift_factor)
  letters = string.chars
  letters.map do |letter|
    shifted_character(letter, shift_factor)
  end.join
end
