class Flight
  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end

  private

  attr_reader :database_handle, :flight_number
end

# There is nothing technically incorrect about this class, but the definition
# may lead to problems in the future. How can this class be fixed to be
# resistant to future problems?

# The writer and reader methods for database_handle are public. There shouldn't
# ever be a reason to change the handle, or access it from outside the class.
# We can add private getter methods for :database_handle and :flight_number,
# so that they are only retrievable from within the `Flight` class.
