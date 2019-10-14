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

end
