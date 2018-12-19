class User

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipecards
    RecipeCard.all.select do |recipecard|
      recipecard.user == self
    end
  end

  def recipes
    recipecards.map do |recipecard|
      recipecard.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(date, rating, self, recipe)
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def top_three_recipes
    a = recipecards.sort_by do |card|
      card.rating
    end

    a.collect do |card|
      card.recipe
    end.reverse[0..2]

  end

  def most_recent_recipe
    recipes.last
  end
end
