class Owner
  attr_accessor :name
  attr_reader :animals

  def initialize(name)
    @name = name
    @animals = []
  end

  def add_animals(animal)
    @animals.push(animal)
  end
end
