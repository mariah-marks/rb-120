class Car
  attr_accessor :mileage

  def initialize
    @mileage = 0
  end

  def increment_mileage(miles)
    total = mileage + miles
    self.mileage = total
  end

  def print_mileage
    puts mileage
  end
end

car = Car.new
p car.mileage
car.mileage = 5000

car.increment_mileage(678)
car.print_mileage  # should print 5678

# Fix the following code so it works properly.
# On line 10, `self` needs to be prepended to the `mileage`
# setter method invocation. Otherwise, `mileage` represents a new
# local variable being initialized. The instance variable `@mileage` can
# be re-assigned directly, but using the setter method that's already been
# defined makes this code easier to maintain in the future.