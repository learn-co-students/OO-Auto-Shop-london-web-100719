require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

owner1 = CarOwner.new("o1")
owner2 = CarOwner.new("o2")

mech1 = Mechanic.new("mech1", "antique")
mech2 = Mechanic.new("mech2", "exotic")
mech3 = Mechanic.new("mech3", "cluncker")

car1 = Car.new("make", "model", "antique", owner1)
car2 = Car.new("make1", "model", "exotic", owner2)
car3 = Car.new("make", "model", "cluncker", owner1)
car4 = Car.new("make", "model", "antique", owner2)

binding.pry
