class CarOwner

    attr_reader :name
    attr_accessor

    @@all = []

    def initialize(name)
    
        @name = name

        self.class.all << self

    end

    def self.all

        @@all

    end

    def cars

        Car.all.select {|car| car.owner == self}
        
    end

end
