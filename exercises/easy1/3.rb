# Complete this program so that it produces the expected output:
# The author of "Snow Crash" is Neil Stephenson.
# book = "Snow Crash", by Neil Stephenson.

class Book
  attr_reader :author, :title

  def initialize(author, title)
    @author = author
    @title = title
  end

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new("Neil Stephenson", "Snow Crash")
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

# What are the differences between attr_reader, attr_writer, and attr_accessor?
# Why did we use attr_reader instead of one of the other two? Would it be okay
# to use one of the others? Why or why not?

# `attr_reader` creates a getter method for each argument passed. `attr_writer`
# creates a setter method for it's arguments. `attr_accessor` creates both a
# getter and setter method for it's arguments. To access the instance variables
# `@author` and `@title` outside of the class, we need a getter method.
# The setter method would only be needed if the value for either instance
# variable needed to be changed outside of the class.

# Instead of attr_reader, suppose you had added the following methods to this
# class:

# def title
#   @title
# end

# def author
#   @author
# end

# Would this change the behavior of the class in any way? If so, how? If not,
# why not? Can you think of any advantages of this code?

# This code wouldn't change the class behavior.
# Writing the getter methods for each variable manually has the benefit of
# modifying the data internally before it's returned. For example, we could
# capitalize the first character and downcase remaining characters within the
# getter methods.
