class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
  end
  
  def self.all
    @@all
  end

  def cars
    Car.all.select {|car| car.owner == self}
  end

  def classifications
    cars.map {|car| car.classification}
  end

  def mechanic
    Mechanic.all.select {|mechanic| classification.include?(mechanic.specialty) }
  end

  



end
