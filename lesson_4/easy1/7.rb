class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    self.age += 1
  end
end

# You can see in the make_one_year_older method we have used self. What
# does self refer to here?

# `self` refers to the instance that called the method `make_one_year_older`.
# Line 10 calls the setter method `age` on that instance object and increments
# the value referenced by `@age` by 1.