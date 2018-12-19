class RecipeIngredient

  attr_accessor :name, :ingredient, :recipe

  @@all = []

  def initialize(ingredient, recipe)
    @ingredient = ingredient
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end
end
