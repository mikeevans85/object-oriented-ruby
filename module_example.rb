module Vehiculization
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car
  include Vehiculization

  def initialize
    super
    @fuel = 100
    @make = 'Honda'
    @model = 'Civic'
  end

  def accelerate
    super 
    @fuel -=5
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include Vehiculization

  def initialize
    super
    @type = 'Schwinn'
    @bell = true
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car1 = Car.new
bike1 = Bike.new

car1.accelerate
car1.accelerate
car1.accelerate
bike1.ring_bell


p car1
p bike1
