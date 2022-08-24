class Animal
  attr_reader :id, :visits, :owner
  attr_accessor :name, :number_of_legs

  def initialize(name, number_of_legs)
    @id = Random.rand(1..1000)
    @name = name
    @visits = []
    @owner = ''
    @number_of_legs = number_of_legs
  end

  def add_visit(visit)
    @visits.push(visit)
  end

  def remove_leg
    @number_of_legs -= 1 if @number_of_legs.positive?
  end

  def owner=(owner)
    @owner = owner
    owner.animals.push(self) unless owner.animals.include?(self)
  end
end
