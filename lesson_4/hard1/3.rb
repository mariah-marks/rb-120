# The designers of the vehicle management system now want to make an
# adjustment for how the range of vehicles is calculated. For the seaborne
# vehicles, due to prevailing ocean currents, they want to add an additional
# 10km of range even if the vehicle is out of fuel.

# Alter the code related to vehicles so that the range for autos and 
# motorcycles is still calculated as before, but for catamarans and motorboats,
# the range method will return an additional 10km.


module Moveable
  attr_accessor :speed, :heading
  attr_writer :fuel_capacity, :fuel_efficiency

  def range
    @fuel_capacity * @fuel_efficiency
  end
end

# Class name changed from `Watercraft` to `Seacraft`
class Seacraft
  include Moveable

  attr_reader :hull_count, :propeller_count

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    @propeller_count = num_propellers
    @hull_count = num_hulls
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
  end

  # Custom method defined to override `Moveable::SeaCraft#range`
  def range
    super + 10
  end
end

class Motorboat < Seacraft
  def initialize(km_traveled_per_liter, liters_of_fuel_capacity)
    super(1, 1, km_traveled_per_liter, liters_of_fuel_capacity)
  end
end

class Catamaran < Seacraft
  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    super
  end
end
