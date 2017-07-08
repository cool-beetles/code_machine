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
      #27 % 26 = 1
    end

  end
  
  return encrypted_message  

rescue
  return "Uzywaj tylko liter"

end

puts "Podaj tekst do zaszyfrowania:"
original_message = gets.chomp
puts encrypt_with_caesar(original_message)

puts "Szyfrujemy dalej? (tak/nie)"
text = gets.chomp

  if text == "nie"
    puts "Koniec szyfrowania"

  elsif     
    text == "tak"
    puts "Podaj tekst do zaszyfrowania:"
    original_message = gets.chomp
    puts encrypt_with_caesar(original_message)

  else
    puts "Użyj 'tak' lub 'nie'!!!"
    text = gets.chomp
  end
