class Car

  attr_reader :make, :model, :classification, :owner

  @@all = []

  def initialize(make, model, classification, owner)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    Car.all << self
  end

  def self.all
    @@all
  end

  def self.all_class
    Car.all.map {|car| car.classification}.uniq
  end

  def mechanics
    Mechanic.all.select {|mechanic| mechanic.specialty == @classification}
  end

  

end
