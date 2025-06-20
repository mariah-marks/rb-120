class Bag
  def initialize(color, material)
    @color = color
    @material = material
  end
end

# If we have the class below, what would you need to call to create a new
# instance of this class.

# To create a new instance, we need to call `new` on the `Bag` class
# and pass two arguments.

Bag.new('leopard print', 'vegan leather')