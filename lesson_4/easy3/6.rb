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

# What is another way we could write `make_one_year_older` so we don't
# have to use the self prefix?

# As written, line 10 calls the setter method `#age=`
# We can also re-assign the instance variable directly
# by replacing the code on line 10 with `@age += 1`.
