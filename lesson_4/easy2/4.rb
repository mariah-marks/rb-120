class BeesWax
  def initialize(type)
    @type = type
  end

  def type
    @type
  end

  def type=(t)
    @type = t
  end

  def describe_type
    puts "I am a #{@type} of Bees Wax"
  end
end

# What could you add to this class to simplify it and remove two methods from
# the class definition while still maintaining the same functionality?

# The methods `#type` and `#type=` only return or change the value of `@type`,
# making this a good case for `attr_accessor`.

class BeesWax
  attr_accessor :type

  def initialize(type)
    @type = type
  end

  def describe_type
    puts "I am a #{@type} of Bees Wax"
  end
end

BeesWax.new("cube").describe_type