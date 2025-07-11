class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

# In the name of the cats_count method we have used self. What does self
# refer to in this context?

# Within the class definition body, `self` refers to the class.
# So when we create a class method, and append our method name to self,
# we are defining a method on the class itself.