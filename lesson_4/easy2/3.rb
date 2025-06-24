module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end

# How do you find where Ruby will look for a method when that method is called?
# How can you find an object's ancestors?
# What is the lookup chain for Orange and HotSauce?

# When searching for a method, Ruby first looks in the class of the method that
# invoked it. If it's not defined in that class, Ruby looks through inherited
# interfaces, in reverse order starting from the last included, before looking
# through any parent classes. Here, we only have one case of interface
# inheritance for each class, and no class inheritance.

# To find the look-up chain for a class or module, we can invoke `#ancestors`
# on it.
Orange.ancestors
# => [Orange, Taste, Object, Kernel, BasicObject]
HotSauce.ancestors
# => [HotSauce, Taste, Object, Kernel, BasicObject]