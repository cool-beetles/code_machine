def caesar(string, shift=3)
  alphabet1 = Array('a'..'z')
  alphabet2 = Array('a'..'e')
  word = ""
  alphabet = alphabet1.concat(alphabet2)
  
  string.downcase.split('').each do |letter|
    if letter == " "
      word = word + " "
    else
      new_letter_position = alphabet.find_index(letter) + shift
      new_letter = alphabet.at(new_letter_position)
      word = word + new_letter
    end
  end

  word
end
