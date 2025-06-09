class Pet
  def initialize(name, age)
    @name = name
    @age = age
  end

  def to_s
    "My cat #{@name} is #{@age} years old and has #{@colors} fur."
  end
end

class Cat < Pet
  def initialize(name, age, colors)
    super(name, age)
    @colors = colors
  end
end

pudding = Cat.new('Pudding', 7, 'black and white')
butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
puts pudding, butterscotch

# Update this code so that when you run it, you see the following output:
# My cat Pudding is 7 years old and has black and white fur.
# My cat Butterscotch is 10 years old and has tan and white fur.

# Why would we be able to omit the initialize method? Would it be a good idea
# to modify Pet in this way? Why or why not? How might you deal with some of
# the problems, if any, that might arise from modifying Pet?

# Creating a default value for `@colors` within `Pet#Initialize` would allow
# new objects to be instantiated without a third argument. There could be many
# `Pet` subclasses where having an attribute `@colors` doesn't make sense, if
# there is less variablity with pets of different classes. It may be more ideal
# to specify a `@colors` attribute for specific classes. Otherwise, it would be
# required that future code handle errors that may arise from `nil` values.
