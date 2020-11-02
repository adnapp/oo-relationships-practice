require 'pry'
class Bakery
    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def desserts
        Dessert.all.select {|dessert| dessert.bakery == self}
    end

    def ingredients #how do i stop everything from getting piled in an array
        desserts.map {|des| des.ingredients}
    end

    def shopping_list
        x = self.ingredients[0].map {|ing| ing.name}
    end

    def total_calories
         x = self.ingredients[0].map {|ing| ing.calories}.sum
    end

    def average_calories
        self.total_calories/self.ingredients[0].count.round(1)
    end

    def self.all
     @all
    end
end