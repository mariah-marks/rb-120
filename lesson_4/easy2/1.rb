class Oracle
  def predict_the_future
    p choices.class
    p choices.methods
    #"You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

# What is the result of executing the following code:
oracle = Oracle.new
oracle.predict_the_future
# => "You will eat a nice lunch"

# Here, `choices` returns an Array object. Calling `Array#sample` on
# that object returns a random element from the collection. Because
# all elements are strings, we can concatenate the return value
# with `"You will "` using the `String#+` method.