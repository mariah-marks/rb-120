# Building on the prior vehicles question, we now must also
# track a basic motorboat. A motorboat has a single propeller and hull,
# but otherwise behaves similar to a catamaran. Therefore, creators of
# Motorboat instances don't need to specify number of hulls or propellers.
# How would you modify the vehicles code to incorporate a new Motorboat class?

# Create a new class called `Motorboat` which `Catamaran` can inherit from.
# Because `Catamaran` has an `is-a` relationship with `Motorboat`, class
# inheritance seems like a good choice. To implement this change, the `Drivable`
# module should be mixed into the new `Motorboat` parent class.
# The propeller and hull count attributes can stay scoped at the instance level
# for the `Catamaran` class.

module Moveable
  attr_accessor :speed, :heading
  attr_writer :fuel_capacity, :fuel_efficiency

  def range
    @fuel_capacity * @fuel_efficiency
  end
end

class Watercraft
  include Moveable

  attr_reader :hull_count, :propeller_count

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    @propeller_count = num_propellers
    @hull_count = num_hulls
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
  end
end

class Motorboat < Watercraft
  def initialize(km_traveled_per_liter, liters_of_fuel_capacity)
    super(1, 1, km_traveled_per_liter, liters_of_fuel_capacity)
  end
end

class Catamaran < Watercraft
  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    super
  end
end
