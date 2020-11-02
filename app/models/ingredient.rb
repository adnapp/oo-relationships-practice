require 'pry'
class Ingredient
    @@all = []

    attr_reader :calories, :name, :dessert

    def initialize(name, calories)
        @name = name
        @calories = calories.to_f
        @@all << self
    end

    def dessert
        x = DessertIngredient.all.select {|des| des.ingredient == self}
        x.map {|des| des.dessert}
    end

    def self.find_all_by_name(string)
        self.all.select {|ing| ing.name.include?(string)}
    end

    def bakeries
        self.dessert.map {|dessert| dessert.bakery}
    end

    def self.all
        @@all
    end

end