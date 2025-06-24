class Cat
  def initialize(type)
    @type = type
  end

  def to_s
    "I'm a #{@type} cat."
  end
end

bootsy_collins = Cat.new("tuxedo")
puts bootsy_collins
# => "I'm a tuxedo."

# How could we go about changing the to_s output on this method to look
# like this: I am a tabby cat? (this is assuming that "tabby" is the type
# we passed in during initialization).

# We can define a custom `#to_s` method to override the method inherited from
# `Object`. We can then utilize the implicit calling of `to_s` via the `puts`
# method to call `to_s` on the instance.
