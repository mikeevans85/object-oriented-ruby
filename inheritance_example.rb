class Vehicle
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

class Car < Vehicle
  def initialize
    super
    @fuel = 100
    @make = 'Honda'
    @model = 'Civic'
  end

  def accelerate
    @speed +=10
    @fuel -=5
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle 
  def initialize
    super
    @type = 'Schwinn'
    @bell = true
  end  

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new
bike = Bike.new

car.accelerate
car.accelerate
car.accelerate
car.turn('south')
car.honk_horn
p car

bike.accelerate
bike.accelerate
bike.accelerate
bike.turn('up')
bike.ring_bell
bike.brake
p bike

