class Something
  def initialize
    @data = 'Hello'
  end

  def dupdata
    @data + @data
  end

  def self.dupdata
    'ByeBye'
  end
end

thing = Something.new
puts Something.dupdata
puts thing.dupdata

# On line 15, a new instance of the `Something` class is instantiated
# and `thing` is assigned to reference it.

# Line 16 invokes the `self.dupdata` class method on the `Something`
# class, which returns `"ByeBye"`.

# Line 17 invokes the `dupdata` instance method on an instance called
# `thing`, which concatenates `@data` with itself.
