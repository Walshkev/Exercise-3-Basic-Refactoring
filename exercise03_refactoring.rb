# kevin walsh 
#cs 362
#exercise 3

class IceBoxRefrigerator

  attr_reader :height, :width, :depth

  def initialize(height = 0, width = 0, depth = 0)
    @height = height
    @width = width
    @depth = depth
  end

  def add(beverage)
  end

  def find_volume_gallons 
  end
end

class BrokenRefrigerator

  attr_reader :height, :width, :depth

  def initialize(height = 0, width = 0, depth = 0)
    @height = height
    @width = width
    @depth = depth
  end

  def add(beverage)
  end

  def find_volume_gallons 
  end

end

class RootBeer; end
class Kombucha; end

class Kitchen

  def initialize(refrigerator)
    @refrigerator = refrigerator
  end

  def add_beer_to_refrigerator
    add_bevy_to_fridge(RootBeer.new)
  end

  def add_bevy_to_fridge(bevy)
    @refrigerator.add(bevy)
  end 

  def find_volume_gallons 
    fridge_volume = @refrigerator.height * @refrigerator.width * @refrigerator.depth
    fridge_volume_gallons = fridge_volume * 7.48052


  def to_s
    self.find_volume_gallons 
    "Kitchen. Fridge volume = #{fridge_volume_gallons} gallons"
  end

end

# Current usage example:

kitchen = Kitchen.new(IceBoxRefrigerator.new)
kitchen.add_bevy_to_refrigerator(RootBeer.new)
puts kitchen

# kitchen has an IceBoxRefrigerator with a RootBeer in it.

# Problem: you can't create a kitchen with a different fridge, and you can't
#          add any beverage other than beer.

# Goal: Create a kitchen with a BrokenRefrigerator, and add Kombucha to it.

