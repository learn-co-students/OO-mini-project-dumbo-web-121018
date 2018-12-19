require_relative '../config/environment.rb'





user1 = User.new("Simon")
user2 = User.new("Leizl")
user3 = User.new("Jane")
user4 = User.new("Kevin")
user5 =User.new("coffee_dad")

recipe1 = Recipe.new("Chicken Parmesan")
recipe2 = Recipe.new("Pizza")
recipe3 = Recipe.new("Cookies")
recipe4 = Recipe.new("Coffee")

ingredient1 = Ingredient.new("chicken")
ingredient2 = Ingredient.new("eggs")
ingredient3 = Ingredient.new("sugar")
ingredient4 = Ingredient.new("coffee beans")
ingredient5 = Ingredient.new("pepperoni")
ingredient6 = Ingredient.new("cheese")

recipe_card1 = RecipeCard.new(user1, recipe1)
recipe_card2 = RecipeCard.new(user1, recipe2)
recipe_card3 = RecipeCard.new(user2, recipe1)
recipe_card4 = RecipeCard.new(user4, recipe4)
recipe_card5 = RecipeCard.new(user5, recipe4)
recipe_card6 = RecipeCard.new(user5, recipe3)

recipe_ingredient1 = RecipeIngredient.new(recipe1, ingredient1)
recipe_ingredient2 = RecipeIngredient.new(recipe1, ingredient4)
recipe_ingredient3 = RecipeIngredient.new(recipe2, ingredient2)
recipe_ingredient4 = RecipeIngredient.new(recipe4, ingredient2)
recipe_ingredient5 = RecipeIngredient.new(recipe3, ingredient3)
recipe_ingredient6 = RecipeIngredient.new(recipe3, ingredient1)

cheese_pepperoni_array = [ingredient5, ingredient6]

allergen1 = Allergen.new(user1, ingredient2)
allergen2 = Allergen.new(user1, ingredient4)
allergen3 = Allergen.new(user2, ingredient3)
allergen4 = Allergen.new(user3, ingredient3)

binding.pry
