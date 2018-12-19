
class User

  @@all = []

  def initialize(name=nil)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens_instances
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def allergens
    allergens_instances.map do |allergen_instance|
      allergen_instance.ingredient
    end
  end

  def most_recent_recipe
    recipes[-1].recipe
  end
end
