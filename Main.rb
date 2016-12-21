require_relative 'VocabularyApp.rb'

puts "Please select desired letter from vocabulary list"
input = gets.chomp

if input =~ /[A-Za-z]/ && input.length == 1
  app = VocabularyApp.new(input)
  app.begin
else
  puts "input is invalid"
end