require_relative '../config/environment.rb'




nut_allergy = Allergen.new("nuts")
gluten = Allergen.new("gluten")
dairy = Allergen.new("dairy")

bread = Ingredient.new("bread",gluten)
pasta = Ingredient.new("pasta",gluten)
nuts = Ingredient.new("nuts",nut_allergy)
milk =Ingredient.new("milk",dairy)
cheese = Ingredient.new("cheese", dairy)
sauce = Ingredient.new("sauce")

mindy = User.new("mindy")
mindy.declare_allergen("bread")
mindy.declare_allergen("nuts")
mindy.allergens

lizzy = User.new("lizzy")
lizzy.declare_allergen("milk")
lizzy.allergens

tommy = User.new("tommy")
tommy.declare_allergen("nuts")
tommy.allergens

mandy = User.new("mandy")
mandy.declare_allergen("milk")
mandy.allergens


zitti = Recipe.new("Baked Zitti")
spaghetti=Recipe.new("spaghetti")


moms_spaghetti = RecipeCard.new(mindy,spaghetti, "November 20", 5)
lizzys_zitti = RecipeCard.new(lizzy,zitti,"January 14", 3)
lizzys_spaghetti = RecipeCard.new(lizzy, spaghetti, "February 2", 5)
mandys_spaghetti = RecipeCard.new(mandy, spaghetti, "February 4", 5)

zitti_ingredient = RecipeIngredient.new([sauce, pasta, cheese], zitti)
spaghetti_ingredient =RecipeIngredient.new([sauce,pasta,bread],spaghetti)





binding.pry
