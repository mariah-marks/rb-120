class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

# Which of these two classes would create objects that would have an instance
# variable and how do you know?

# Both classes define an `initialize` method, which gets executed,
# every time a new object is instantiated. In `Fruit#initialize` however,
# new local variable called `name` is initialized instead of an instance variable.
# `Pizza#initialize` however does create a new instance variable, `@name`.
