require 'pry'

class Recipe
    attr_reader :recipe_name

  @@all = []

  def initialize(recipe_name)
    @recipe_name = recipe_name
    @@all << self
  end

  def self.all
    @@all
  end

  def users
    RecipeCard.all.select do |recipe|
      recipe.recipe == self
    end
  end

  def ingredients
    # take all the ingredients from this recipe
    RecipeIngredient.all.select do |ingredient|
      ingredient.recipe == self
    end
  end

  def add_ingredients(ingredient)
    RecipeIngredient.new(self, ingredient)
  end

  def allergens
  # x = Ingredient.all.select do |allergy|
  #      allergy.recipe == self
  #   end
  end

end
