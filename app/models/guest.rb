class Guest
    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def trips
        Trips.all.select {|trip| trip.guest == self}
    end

    def listings
        self.trips.map {|trip| trip.listing}
    end

    def trip_count
        self.trips.count
    end

    def self.pro_traveler
        self.all.select {|guest| guest.trip_count > 1}
    end

    def self.find_all_by_name(string)
        self.all.select {|guest| guest.name == string  }
    end

    def self.all
        @@all
    end
end