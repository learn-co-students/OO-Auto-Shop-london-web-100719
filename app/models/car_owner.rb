class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select { |car| car.owner == self }
  end

  def mechanics
    self.cars.map(&:mechanics)
  end

  def cars_per_owner
    self.all.map(&:cars).count / @@all.length
  end

end
