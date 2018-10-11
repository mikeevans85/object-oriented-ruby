require "http"


while true
  system "clear"
  puts "Welcome to the Dictionary app!"

  puts "Enter a word: "
  word = gets.chomp

  response1 = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=ac6099e63826b8650f05e22c4cc08baa2f21668e3f16176fd")
  data = response1.parse

  response2 = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/topExample?useCanonical=false&api_key=ac6099e63826b8650f05e22c4cc08baa2f21668e3f16176fd")
  top_example = response2.parse

  response3 = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/pronunciations?useCanonical=false&limit=50&api_key=ac6099e63826b8650f05e22c4cc08baa2f21668e3f16176fd")
  pronunciation = response3.parse
  pron = pronunciation[0]["raw"]
  if pron == nil
    puts "#{word}"
  else
    puts "#{word} (#{pron})"
  end
  puts "Definition(s): "

  index = 0
  data.length.times do
    definition_number_index = data[index]["sequence"].to_i
    definition_number = definition_number_index + 1
    definition = data[index]["text"]
    part_of_speech = data[index]["partOfSpeech"]
    puts "#{definition_number}. #{definition}(#{part_of_speech})\n\n"
    index += 1
  end

  x = top_example["text"]
  if x == nil
    puts "Example: "
    puts "n/a"
  else
    puts "Example: "
    puts x
  end  

  puts "Press q and then Enter to quit, or just Enter to continue."
  input = gets.chomp
  if input == "q"
    puts "Goodbye!"
    break
  end
end

