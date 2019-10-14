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

end
