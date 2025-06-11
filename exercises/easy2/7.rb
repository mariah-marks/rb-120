# Write the classes and methods that will be necessary to make this code run,
# and print the following output:
# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin

# B Holmes has adopted the following pets:
# a dog named Molly
# a parakeet named Sweetie Pie
# a dog named Kennedy
# a fish named Chester

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.

=begin

Requirements:
  - 3 classes:
    Pet(animal, pet_name)
    Owner(owner_name)
    Shelter()

  Methods:
    - Owner
        initialize
          name
          array for adopted pets
        number_of_pets
    - Shelter
        adopt(owner_name, pet_name)
          - stores owner_name with array of pet objects
          - adds pet to array for current owner
            - Owner#add_pet
        print_adoptions
          access to all owners and their pets

Data structures:
  - for each owner key, an array value of all pet objects
    { <Owner:0x0000000107987e90 @name="P Hanson"> => [<pet obj>, <pet obj>],
      <Owner:0x0000000105b97f20 @name="B Holmes"> => [<pet obj] }
    - array of pets accessible within owner variable that gets modified when
      shelter calls `adopt`

=end

class Pet
  attr_accessor :animal, :name

  def initialize(animal, name)
    @animal = animal
    @name = name
  end
end

class Owner
  attr_accessor :name

  def initialize(name)
    @name = name
    @pets = []
  end

  def add_pet(pet)
    @pets << pet
  end

  def number_of_pets
    @pets.size
  end
end

class Shelter
  attr_accessor :adoptions

  def initialize
    @adoptions = {}
  end

  def adopt(owner, pet)
    owner.add_pet(pet)
    if adoptions.include?(owner)
      adoptions[owner] << [pet.animal, pet.name]
    else
      adoptions[owner] = [[pet.animal, pet.name]]
    end
  end

  def print_adoptions
    adoptions.each do |owner, pets|
      puts "\n#{owner.name} has adopted:"

      pets.each do |pet|
        puts "a #{pet[0]} named #{pet[1]} \n"
      end
    end
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new

shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions

puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
