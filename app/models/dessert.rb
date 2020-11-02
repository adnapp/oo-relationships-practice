require 'pry'
class Dessert
    @@all = []

    attr_reader :bakery, :DessertIngredient, :name

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        # @DessertIngredient = DessertIngredient
        @@all << self
    end

    def ingredients
        x = DessertIngredient.all.select {|des| des.dessert == self}
        x.map {|des| des.ingredient}
    end

    def calories
       x = self.ingredients.map {|ing| ing.calories}.sum
    end

    def self.all
        @@all
    end

end