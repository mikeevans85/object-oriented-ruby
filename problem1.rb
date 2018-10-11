require 'HTTP'

while true
  system "clear"
  puts "Welcome to the fortune app!"
  puts "Press 'f' to receive a fortune!"

  fortunes = ["You will find lotsa happiness.", "Bad luck and misfortune will infest your pathetic soul for all eternity.", "A fleeting romance will blossom soon.", "Good luck!", "Pizza will come to you very soon."]

  input = gets.chomp
  fortune = fortunes[rand(5)]

  if input == "f"
    puts fortune
  else
    puts "Only lucky people press 'f'!"
  end

  puts "Press 'q' to quit, or 'f' to receive another fortune!"

  input2 = gets.chomp
  if input2 == "q"
    puts "Goodbye!"
    break
  end
end





