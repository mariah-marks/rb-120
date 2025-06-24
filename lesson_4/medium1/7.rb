class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def light_status
    "I have a brightness level of #{brightness} and a color of #{color}"
  end

end

# How could you change the method name so that the method name is more
# clear and less repetitive?

# Rename the method to `status` or 'display_status'. It's recommended to avoid
# using class names in the methods for that class to reduce redundancy.
