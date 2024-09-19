def caesar_cipher_letter(character, shift)
  lower_cases = ('a'..'z')
  upper_cases = ('A'..'Z')
  if lower_cases.include?(character) 
    ('a'.ord + ((character.ord - 'a'.ord) + shift) % 26).chr 
  elsif upper_cases.include?(character) 
    ('A'.ord + ((character.ord - 'A'.ord) + shift) % 26).chr 
  else
    character
  end
end

def caesar_cipher(string, shift)
  string.split('').map {|character| caesar_cipher_letter(character, shift)}.join
end

# debugger

puts caesar_cipher('Hello, World!', 5)