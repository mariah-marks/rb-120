class Wallet
  include Comparable

  def initialize(amount)
    @amount = amount
  end

  def <=>(other_wallet)
    amount <=> other_wallet.amount
  end

  protected

  attr_reader :amount
end

bills_wallet = Wallet.new(500)
pennys_wallet = Wallet.new(465)
if bills_wallet > pennys_wallet
  puts 'Bill has more money than Penny'
elsif bills_wallet < pennys_wallet
  puts 'Penny has more money than Bill'
else
  puts 'Bill and Penny have the same amount of money.'
end

puts pennys_wallet.amount

# Modify this code so it works. Do not make the amount in the wallet accessible
# to any method that isn't part of the Wallet class.

# To make this work, I added a protected getter method for `@amount`, which is
# only accessible to objects of the same class. With the `amount` method
# protected, this method can only be accessed with the `self` or by another
# instance of the same class as the receiver.
