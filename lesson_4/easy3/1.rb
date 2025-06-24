class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

# What happens in each of the following cases:
# case 1:
hello = Hello.new
hello.hi

# # case 2:
hello = Hello.new
hello.bye

# # case 3:
hello = Hello.new
hello.greet

# # case 4:
hello = Hello.new
hello.greet("Goodbye")

# # case 5:
Hello.hi

# In cases 1-4, we instantiate a new `Hello` object and initialize a
# local variable `hello` to reference it. After the instantiation in
# case 1, we call the instance method `Hello#hi` on that object, which
# invokes `Greeting#hello` with the argument `"Hello"` which outputs the
# argument.

# In case 2, we raise a NoMethodError exception, because `#bye` is defined
# in `Goodbye`, which is another subclass of `Greeting`. The only relationship
# between the classes `Goodbye` and `Hello` is the shared parent class.

# Case 3 will raise an ArgumentError exception, because `Greeting#greet` is
# invoked with no arguments when it is expecting 1.

# Unlike case 3, case 4 runs without error and outputs the string it is passed,
# `"Goodbye"`.

# Case 5 raises a NoMethodError exception, because there is no `Hello::hi`
# method defined. The only method available to the `Hello` class is an
# instance method, which can only be invoked on by an instance variable of
# that class