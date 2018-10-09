food_array = [ ]

puts "What are your five favorite foods?"

5.times do
  food = gets.chomp
  food_array << food
end

index = 0

food_array.length.times do
  puts "#{index + 1}. #{food_array[index]}"
  index = index + 1
end



