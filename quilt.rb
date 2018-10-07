require "./quiltable.rb"

class Quilt
  attr_reader :color, :size, :price, :fabric
  attr_writer :price

  def initialize(color, size, price, fabric)
    @color = color
    @size = size
    @price= price
    @fabric = fabric
  end

  include Quiltable 
end