def encrypt_with_caesar(original_message, shift = 5)
  alphabet = Array('a'..'z')
  encrypted_message = ""
  original_message.downcase.split('').each do |letter|
    if letter == " "
      encrypted_message += " "
    else
      new_letter_position = alphabet.find_index(letter) + shift
      new_letter = alphabet.at(new_letter_position) % 26
      encrypted_message += new_letter
    end
  end
  puts encrypted_message
  rescue
  puts "Uzywaj tylko liter"
end
puts "Podaj tekst do zaszyfrowania:"
original_message=gets.chomp
original_message.downcase
encrypt_with_caesar(original_message)
puts "Szyfrujemy dalej? (tak/nie)"
text=gets.chomp
  if text == "nie"
    puts "Koniec szyfrowania"
  else
    text == "tak"
    puts "Podaj tekst do zaszyfrowania:"
    original_message = gets.chomp
    encrypt_with_caesar(original_message)
  end 

