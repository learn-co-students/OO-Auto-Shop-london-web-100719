require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Seed Data

owner1 = CarOwner.new("gordy")
owner2 = CarOwner.new("gee")
owner3 = CarOwner.new("flo")

car1 = Car.new(owner1, "volvo", "bus", "home car")
car2 = Car.new(owner2, "ferrari", "big red", "race car")
car3 = Car.new(owner3, "ford", "model t", "antique")

mechanic1 = Mechanic.new("caroline", "home car")
mechanic2 = Mechanic.new("niki", "race car")
mechanic3 = Mechanic.new("dom", "antique")

binding.pry
