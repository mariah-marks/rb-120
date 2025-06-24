class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

# Which one of these is a class method (if any) and how do you know?
# How would you call a class method?

# Class method names, like the one defined on line 2, are prepended with `self`.
# Class methods are invoked by calling the method on the class name.

Television.manufacturer