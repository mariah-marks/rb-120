module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed
  def go_slow
    puts "I am safe and driving slow."
  end
end

class Truck
  include Speed
  def go_very_slow
    puts "I am a heavy truck and like going very slow."
  end
end

# If we have a Car class and a Truck class and we want to be able to go_fast,
# how can we add the ability for them to `go_fast` using the module Speed? How
# can you check if your Car or Truck can now go fast?

# We can mix in the module to both classes. To see the methods available to
# each class, we can output the return value from `Class::instance_methods`.
# Invoking `go_fast` on an instance of either class also verifies that method
# is accessible.

p Car.instance_methods
p Truck.instance_methods
