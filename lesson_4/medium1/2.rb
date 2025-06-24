class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    quantity = updated_count if updated_count >= 0
  end
end

# On line 11, we need to prepend an `@` to quantity
# so that the instance variable is re-assigned. As
# written, line 11 creates a new local variable called
# quantity instead of re-assigning the value for `@quantity`.
