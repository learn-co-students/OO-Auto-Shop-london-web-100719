class Mechanic

    attr_reader :name, :specialty
    attr_accessor

    @@all = []

    def initialize(name, specialty)

        @name = name
        @specialty = specialty

        self.class.all << self
    
    end

    def self.all

        @@all
        
    end

    def servicable_cars

        Car.all.select {|car| car.classification == self.specialty}
        
    end

    def clients

        CarOwner.all.select {|owner| owner.mechanics.include?(self)}
        
    end

    def clients_names

        self.clients.map {|client| client.name}
        
    end

end
