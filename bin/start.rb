#!/usr/bin/env ruby
require './code_machine.rb'

puts "Podaj tekst do zaszyfrowania:"
original_message = gets.chomp
puts encrypt_with_caesar(original_message)

puts "Szyfrujemy dalej? (tak/nie)"
text = gets.chomp

if text == "nie"
  puts "Koniec szyfrowania"
elsif text == "tak"
  puts "Podaj tekst do zaszyfrowania:"
  original_message = gets.chomp
  puts encrypt_with_caesar(original_message)
else
  puts "Użyj 'tak' lub 'nie'!!!"
  text = gets.chomp
end
