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

    def buy_car(car_to_buy)

        Car.all.select {|car| car == car_to_buy}[0].owner = self
        
    end

    def mechanics

        cars_classes = self.cars.map {|car| car.classification}
        Mechanic.all.select {|mech| cars_classes.include?(mech.specialty)}
        
    end

    def self.average_amount_of_cars

        CarOwner.all.map {|owner| owner.cars.size}.sum / CarOwner.all.size.to_f
        
    end

end
