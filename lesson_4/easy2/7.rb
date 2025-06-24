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

# Explain what the @@cats_count variable does and how it works.
# What code would you need to write to test your theory?

# @@cats_count tracks the number of Cat objects that are instantiated.
# Every time the a new Cat object is created, the `Cat#initialize method`
# is called, and the value referenced by `@@cats_count` is incremented
# by one. To demonstrate:

p Cat.cats_count
cat1 = Cat.new('tabby')
p Cat.cats_count
cat2 = Cat.new('tuxedo')
cat3 = Cat.new('orange')
p Cat.cats_count
