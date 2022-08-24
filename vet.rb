class Vet
  attr_accessor :name, :address
  attr_reader :visits

  def initialize(name, address)
    @name = name
    @visits = []
    @address = address
  end

  public

  def add_visit(visit)
    @visits.push(visit)
  end
end
