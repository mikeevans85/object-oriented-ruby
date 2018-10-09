require "./quilt.rb"

module StoreFront
  class Snuggie < Quilt
    def initialize(color, size, price, fabric)
      super
    end

    def sell_snuggie
      puts "Don't you want to be warm everywhere? Buy a Snuggie!"
      @price +=5
    end
  end
end