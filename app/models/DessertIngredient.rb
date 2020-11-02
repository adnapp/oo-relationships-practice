class DessertIngredient
    @@all = []

    attr_reader :dessert, :ingredient

    def initialize(dessert, ingredient)
        @dessert = dessert
        @ingredient = ingredient
        @@all << self
    end

    def self.all
        @@all
    end

end