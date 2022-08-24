class Visit
  attr_accessor :date, :animal, :vet

  def initialize(date, animal, vet)
    @date = date
    @animal = animal
    @vet = vet

    @vet.add_visit(self)
    @animal.add_visit(self)
  end
end
