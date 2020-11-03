class Trips
    @@all = []

    attr_reader :listing, :guest

    def initialize(listing, guest)
        @listing = listing
        @guest = guest
        self.class.all << self
    end

    def self.all
        @@all
    end
end