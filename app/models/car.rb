class Car

    attr_reader :make, :model, :classification
    attr_accessor :owner

    @@all = []

    def initialize(make, model, classification)

        @make = make
        @model = model
        @classification = classification

        self.class.all << self

    end

    def self.all

        @@all
        
    end

    def self.classifications

        Car.all.map {|car| car.classification}
        
    end

    def find_a_mechanic

        Mechanic.all.select {|mech| mech.specialty == self.classification}
        
    end

end
