class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

tv = Television.new
tv.manufacturer
tv.model

Television.manufacturer
Television.model

# What happens with these method calls?
# Line 12 raises an exception, because a class method is being called on an
# instance.
# Line 13 executes the code within `model`.
# Line 14 executes the code within `manufacturer`.
# Line 15 raises an exception, because an instance method is being called on
# a class.