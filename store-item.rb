require "./quilt.rb"
require "./snuggie.rb"


quilt1 = StoreFront::Quilt.new("red", "medium", 500, "cotton")
quilt2 = StoreFront::Quilt.new("green", "large", 900, "polyester")
quilt3 = StoreFront::Quilt.new("mauve", "small", 250, "acrylic")
snuggie1 = StoreFront::Snuggie.new("tan", "extra_large", 25, "cotton")

puts quilt1.size
puts quilt3.color
puts quilt2.price
puts quilt1.fabric

quilt1.price = 600
puts quilt1.price
quilt3.price = 325
puts quilt3.price

puts snuggie1.price
puts snuggie1.sell_snuggie
puts snuggie1.sell_snuggie

puts quilt1.quilt_info








