require_relative 'number_to_word'

input = Integer(ARGV[0]) rescue nil

number_to_word = NumberToWord.new

begin
  word = number_to_word.translate(input)

  puts word
rescue NegativeNumberError => e
  puts e
rescue NumberTooBigError => e
  puts e
rescue InvalidNumberError => e
  puts e
end