class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

name = 'Fluffy'
fluffy = Pet.new(name)
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

# What output does this code print? Think about any undesirable effects
# occurring due to the invocation on line 17. Fix this class so that
# there are no surprises waiting in store for the unsuspecting developer.

# When line 17 is executed, the `Pet#to_s` method is invoked, and the `upcase!`
# method mutates the value referenced by `@name`. To fix this, the non-mutating
# `#upcase` method can be invoked on directly on the interpolated `@name`.

name = 42
fluffy = Pet.new(name)
name += 1
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

# On line 30, local variable `name` is re-assigned to reference a new
# integer object with the value `43`. This change doesn't affect the
# the relationship between the instance variable `@name` and the value
# it references.
# We are able to call the `#upcase` method from within the custom `to_s`
# because we call `to_s` on argument `name` within the `initialize` method,
# which returns a string. Without the `to_s` method invocation, line 9 would
# raise a no method error, because there is no `Integer#upcase` method.
