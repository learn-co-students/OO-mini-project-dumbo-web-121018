
class Recipe

  @@all = []

  def initialize(name=nil)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def all_recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end

  def users
    all_recipe_cards.map do |recipe_card|
      recipe_card.user
    end
  end

  def all_recipe_ingredient
    RecipeIngredient.all.select do |recipe_ingredient|
      recipe_ingredient.recipe == self
    end
  end

  def ingredients
    all_recipe_ingredient.map do |recipe_ingredient|
      recipe_ingredient.ingredient
    end
  end

  def add_ingredients(ingredient_array)
    ingredient_array.each do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end


  # def self.most_popular
  #   self.all.each do |recipe|
  #     recipe
  #   end
  # end
end
