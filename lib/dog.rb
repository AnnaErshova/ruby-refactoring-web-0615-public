class Dog

  attr_accessor :name, :breed,:leash, :plastic_bag, :walking, :vet, :vet_checkup

  # def initialize(name, breed, owner_name)
  def initialize(name, breed, owner_name)
    @name = name # this returns name of the dog
    @breed = breed # returns the breed classification
    @owner = Owner.new(owner_name, self) # returns Owner when #class is called on #owner 
  end

  def owner
     @owner
  end

  def bark
    "Woof!"
  end

  def walking?
    owner.walk
  end

  def vet_checkup?(owner)
    owner.dog.vet_checkup
  end

end # ends Dog class