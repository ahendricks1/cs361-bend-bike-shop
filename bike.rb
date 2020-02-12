# Bike
<<<<<<< HEAD
=======
require_relative 'luggage'
>>>>>>> f40810edb0a7530390426b4b46eecca69fa287f2

class Bike

  STANDARD_WEIGHT = 200 # lbs
<<<<<<< HEAD
  MAX_CARGO_ITEMS = 10

  attr_accessor :id, :color, :price, :weight, :rented, :cargo_contents

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo_contents = []
  end

  def rent!
    self.rented = true
  end

  def add_cargo(item)
    self.cargo_contents << item
  end

  def remove_cargo(item)
    self.cargo_contents.remove(item)
  end

  def pannier_capacity
    MAX_CARGO_ITEMS
  end

  def pannier_remaining_capacity
    MAX_CARGO_ITEMS - self.cargo_contents.size
=======

  attr_reader :id, :color, :price, :weight, :luggage

  def initialize(id, color, price, extra_items)
    @id = id
    @color = color
    @price = price
    @weight = STANDARD_WEIGHT
    @luggage = Luggage.new(Luggage::DEFAULT_MAX_CAPACITY, extra_items, self)
>>>>>>> f40810edb0a7530390426b4b46eecca69fa287f2
  end

end
