class Listing
    @@all = []

    attr_reader :city

    def initialize(city)
        @city = city
        self.class.all << self
    end

    def trips
        Trips.all.select {|trip| trip.listing == self}
    end

    def guests
        self.trips.map {|trip| trip.guest}
    end

    def trip_count
        self.trips.count
    end

    def self.most_popular
         self.all.max_by {|list| list.trip_count}
    end

    def self.find_all_by_city(string)
        self.all.select {|list| list.city == string   }
    end

    def self.all
        @@all
    end
end