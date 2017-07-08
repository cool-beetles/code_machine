#!/usr/bin/env ruby
require './code_machine.rb'

text = "tak"

while text == "tak"
  puts "Podaj tekst do zaszyfrowania:"
  original_message = gets.chomp
  puts encrypt_with_caesar(original_message)

  puts "Szyfrujemy dalej? (tak/nie)"
  text = gets.chomp
end

puts "Koniec szyfrowania"
