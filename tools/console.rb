require_relative '../config/environment.rb'
require_relative '../app/models/bakery'
require_relative '../app/models/dessert'
require_relative '../app/models/DessertIngredient'
require_relative '../app/models/ingredient'

def reload
  load 'config/environment.rb'
end

#airBnb
l1 = Listing.new("NYC")
l2 = Listing.new("PHL")

g1 = Guest.new("Adam")
g2 = Guest.new("Kelly")

t1= Trips.new(l1,g1)
t2= Trips.new(l1,g2)
t3= Trips.new(l2,g2)

#bakery
# b1 = Bakery.new("Adam's Bakery")
# b2 = Bakery.new("Carlo's Bakery")

# i1 = Ingredient.new("Chocolate", 100)
# i2 = Ingredient.new("Mint", 5)
# i3 = Ingredient.new("Milk", 50)

# d1 = Dessert.new("cake", b1)
# d2 = Dessert.new("ice cream", b2)

# di1 = DessertIngredient.new(d1, i1)
# di2 = DessertIngredient.new(d1, i2)
# di3 = DessertIngredient.new(d2, i3)
# di1 = DessertIngredient.new(d2, i1)


binding.pry
