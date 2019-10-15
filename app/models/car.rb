class Car
  attr_reader :owner, :make, :model, :classification
  @@all = []

  def initialize(owner, make, model, classification)
    @owner = owner
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end
  
  def self.all
    @@all
  end

  def mechanics
    Mechanic.all.select { |mechanic| mechanic.specialty == @classification }
  end
end
