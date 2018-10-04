quilt_1 = {:color => "red", :size => "medium", :price => 500, :fabric => "cotton"}
quilt_2 = {:color => "green", :size => "large", :price => 900, :fabric => "polyester"}
quilt_3 = {color: "mauve", size: "small", price: 250, fabric: "acrylic"}

# puts "A #{quilt_1[:size]} #{quilt_1[:color]} #{quilt_1[:fabric]} quilt is being sold for #{quilt_1[:price]} dollars."
# puts "A #{quilt_2[:size]} #{quilt_2[:color]} #{quilt_2[:fabric]} quilt is being sold for #{quilt_2[:price]} dollars."
# puts "A #{quilt_3[:size]} #{quilt_3[:color]} #{quilt_3[:fabric]} quilt is being sold for #{quilt_3[:price]} dollars."

class Quilt
  attr_reader :color, :size, :price, :fabric
  attr_writer :price

  def initialize(color, size, price, fabric)
    @color = color
    @size = size
    @price= price
    @fabric = fabric
  end

end

quilt_1 = Quilt.new("red", "medium", 500, "cotton")
quilt_2 = Quilt.new("green", "large", 900, "polyester")
quilt_3 = Quilt.new("mauve", "small", 250, "acrylic")

puts quilt_1.size
puts quilt_3.color
puts quilt_2.price
puts quilt_1.fabric

quilt_1.price = 600
puts quilt_1.price
quilt_3.price = 325
puts quilt_3.price





