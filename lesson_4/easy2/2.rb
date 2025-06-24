class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  # def choices
  #   ["visit Vegas", "fly to Fiji", "romp in Rome"]
  # end
end

# What is the result of the following:
trip = RoadTrip.new
p trip.predict_the_future
# => "You will romp in Rome"

# On line 19, we invoke the instance method `predict_the_future` on
# an instance of the `RoadTrip` class. This method isn't included in 
# `RoadTrip`,so Ruby looks within the parent class `Oracle`. When line 3
# executes, Ruby first looks for the `choices` method in the Class of 
# the calling instance, `RoadTrip`, and uses the return value from
# `RoadTrip#choices` as the calling object for `sample`.