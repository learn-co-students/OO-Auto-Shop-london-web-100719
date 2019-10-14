require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

car1 = Car.new("Honda", "Civic", "beater")
car2 = Car.new("Honda", "Supra", "sports")
car3 = Car.new("Ferrarri", "La Ferrarri", "super")
car4 = Car.new("Lamborghini", "Urus", "SUV")
car5 = Car.new("Mitsubishi", "Lancer", "sports")
car6 = Car.new("Porsche", "Cayenne", "SUV")
car7 = Car.new("Bugatti", "Veyron", "super")
car8 = Car.new("Rolce Royce", "Wraith", "luxury")
car9 = Car.new("Rolce Royce", "Phantom", "luxury")

owner1 = CarOwner.new("Niki")
owner2 = CarOwner.new("Len")

mech1 = Mechanic.new("John Lajoie", "sports")
mech2 = Mechanic.new("Richard Ham", "super")
mech3 = Mechanic.new("Ben Dover", "luxury")
mech4 = Mechanic.new("MC Hammer", "SUV")
mech5 = Mechanic.new("Leepu", "beater")

binding.pry
0