require "http"

system "clear"
puts "Welcome to the Reddit App!"

puts "Enter a topic: "
input = gets.chomp

response = HTTP.get("https://www.reddit.com/r/#{input}/.json")
data = response.parse

array = data["data"]["children"]

index = 0
array.length.times do
  puts data["data"]["children"][index]["data"]["title"]
  puts
  index += 1
end

id = data["data"]["children"][index]["data"]["title"]
