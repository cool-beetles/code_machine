puts "encrypt_with_caesar('Podaj tekst do zaszyfrowania')"
def encrypt_with_caesar(original_message, shift=5)
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
  encrypted_message=gets.chomp
  puts "Szyfrujemy dalej? (T/N)"
  text=gets.chomp
  text.downcase
    if text == "N"
      encrypted_message = "Koniec szyfrowania"
    else
      text == "T"
      puts "encrypt_with_caesar('Podaj tekst do zaszyfrowania')"
    end
      rescue
      puts "Uzywaj tylko liter"
end
