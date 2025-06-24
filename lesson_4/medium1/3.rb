class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    quantity = updated_count if updated_count >= 0
  end
end

# Changing the `attr_reader` to `attr_accessor` introduces potential
# risks. As written, the getter methods for `@quantity` and `@product_name`
# are public. By making the proposed change, we'd be adding a public setter
# method that would enable these values to be changed outside of the class.
# A safer option would be to make the setter method private. If for some reason
# the quantity of an ordered items needs updating, we could then access it via an
# instance method within the class.
