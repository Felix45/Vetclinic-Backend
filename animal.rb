class Animal
  attr_reader :id, :visits
  attr_accessor :owner, :name, :number_of_legs

  def initialize(name, number_of_legs, owner)
    @id = Random.rand(1..1000)
    @name = name
    @visits = []
    @owner = owner
    @number_of_legs = number_of_legs
  end

  def add_visit()

  end

  def speak()
  end

  def remove_leg
     @number_of_legs -= 1 if @number_of_legs > 0
  end

  private

  def can_speak?
  end
end

    