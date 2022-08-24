require_relative 'animal'

class Spider < Animal
  attr_accessor :net_strength_level
  def initialize(name, number_of_legs, owner, net_strength_level)
    super(name, number_of_legs, owner)
    @net_strength_level = net_strength_level
  end

  def make_a_net
    'Spider making a net [[[[[[[]]]]]]'
  end
end
