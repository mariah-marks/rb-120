class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

# How do we create two different instances of this 
# with separate names and ages?

# Everytime we create a new AngryCat object, we need to pass an argument
# for the name and age.

sprinkles = AngryCat.new(15, "Sprinkles")
princess = AngryCat.new(3, "Princess")

