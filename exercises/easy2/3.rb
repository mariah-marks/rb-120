# Modify the House class so that the above program will work. You are permitted
# to define only one new method in House.
# Expected output:
# Home 1 is cheaper
# Home 2 is more expensive

class House
  include Comparable

  attr_reader :price

  def initialize(price)
    @price = price
  end

  def <=>(other)
    price <=> other.price
  end
end

home1 = House.new(100_000)
home2 = House.new(150_000)

puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1

# Further exploration:
# Using Comparable seems like a good choice. If we were to store multiple
# attributes in a hash, we could compare values for each attribute using `<=>`
# as long as the values were of the same data type.
