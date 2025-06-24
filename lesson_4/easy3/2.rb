class Greeting
  def greet(message)
    puts message
  end

  # added code
  def self.greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end

  # added code
  def self.hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

Hello.hi

# If we call Hello.hi we get an error message. How would you fix this?

# By adding a class method called `hi`, and by adding a class method within
# `Greeting`. Adding a class method within `Hello` isn't sufficient, because
# we aren't able to call another instance method implicitly. We would need to
# instantiate a new instance, and call `Greetings#greet` directly on that new
# instance.
