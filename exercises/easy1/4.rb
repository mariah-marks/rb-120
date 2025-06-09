# Expected output:
# The author of "Snow Crash" is Neil Stephenson.
# book = "Snow Crash", by Neil Stephenson.

class Book
  attr_accessor :title, :author

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new
book.author = "Neil Stephenson"
book.title = "Snow Crash"
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

# What do you think of this way of creating and initializing Book objects?
# (The two steps are separate.) Would it be better to create and initialize
# at the same time like in the previous exercise? What potential problems,
# if any, are introduced by separating the steps?

# In this situation, creating `@title` and `@author` upon instantiation would
# be ideal.
# Otherwise, each variable will reference `nil` unless the setter method is
# called for both variables.
