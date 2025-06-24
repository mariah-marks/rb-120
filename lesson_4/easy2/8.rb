class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end
end

# What can we add to the Bingo class to allow it to inherit
# the play method from the Game class?

# Adding `< Game` to the `Bingo` class definition makes it
# a subclass of `Game`.

Bingo.new.play
# => "Start the game!"
