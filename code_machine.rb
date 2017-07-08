def encrypt_with_caesar(original_message, shift = 5)
  alphabet = Array('a'..'z')
  encrypted_message = ""

  original_message.downcase.split('').each do |letter|
    if letter == " "
      encrypted_message += " "
    else
      new_letter_position = (alphabet.find_index(letter) + shift) % 26
      new_letter = alphabet.at(new_letter_position)
      encrypted_message += new_letter
    end
  end

  return encrypted_message
rescue
  return "Uzywaj tylko liter"
end
