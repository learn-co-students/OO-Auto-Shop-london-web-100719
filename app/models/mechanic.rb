class Mechanic

  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def serviceable
    Car.all.select { |car| car.classification == @specialty }
  end

  def customers
    self.serviceable.map(&:owner)
  end

  def customer_names
    self.customers.map(&:name)
  end

end
