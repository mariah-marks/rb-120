class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end

class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    self.template
  end
end

# Explain how the two classes work differently.
# The two classes work in the same way. The only visible difference between
# the two classes is that `#template` is invoked directly `self` on line
# 21. With getter methods, we don't need to prepend self to instance method
# calls.
