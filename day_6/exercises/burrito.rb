# Add the following methods to this burrito class and call the methods below
#the class:
# 1. add_topping
# 2. remove_topping
# 3. change_protein

class Burrito
  attr_reader :protein, :base, :toppings

  def initialize(protein, base, toppings)
    @protein  = protein
    @base     = base
    @toppings = toppings
  end

  def add_topping(item)
    @toppings.append(item)
  end

  def remove_topping(item)
    @toppings.delete(item)
  end

  def change_protein(item)
    @protein = item
  end
end

dinner = Burrito.new("Beans", "Rice", ["cheese", "salsa", "guacamole"])
p dinner.protein
p dinner.base
p dinner.toppings
puts dinner.inspect

dinner.add_topping("lettuce")
p dinner.toppings
dinner.remove_topping("guacamole")
p dinner.toppings
dinner.change_protein("chicken")
p dinner.protein
puts dinner.inspect
