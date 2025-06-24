class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0
  end
end

# In this code, `balance` is not a local variable, but the getter accessor
# method `#balance` which was created on line 2. Because this method returns
# the value of `@balance`, it's not necessary to reference the instance
# variable directly.
