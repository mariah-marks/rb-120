# What is the default return value of to_s when invoked on an object?
# Where could you go to find out if you want to be sure?

class MyClass
  def initialize
    @some_instance = 1000
  end
end

# The default for the `to_s` method is inherited from the `Object` class.
# To be sure, we can consult the documentation, where it states this method
# returns a string containing the object's class and an encoding of the object
# id.

MyClass.new.to_s
# => "#<MyClass:0x00000001081c3c80>"