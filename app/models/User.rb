class User
  attr_reader :name
  @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def recipes
      RecipeCard.all.select do |recipe|
        recipe.user == self
      end
    end

    def add_recipe_card(recipe, date, rating)
      RecipeCard.new(self, recipe, date, rating)
    end

    def declare_allergen(ingredient)
      Allergen.new(self, ingredient)
    end

    def allergens
      Allergen.all.select do |allergy|
        allergy.user == self
      end
    end



end
