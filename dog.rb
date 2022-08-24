require_relative 'animal'

class Dog < Animal
  attr_accessor :color

  def initialize(name, number_of_legs, owner, color)
    super(name, number_of_legs, owner)
    @color = color
  end

  public

  def bring_a_stick
    'Dog bringing stick ----------->'
  end
end
