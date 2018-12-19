require_relative '../config/environment.rb'

u1 = User.new("kevin")
u2 = User.new("Kah")
u3 = User.new("K")
u4 = User.new("Josh")
u5 = User.new("Tim")

r1 = Recipe.new("chicken")
r2 = Recipe.new("beef")
r3 = Recipe.new("turkey")

rc1 = RecipeCard.new(u1, r1, 12, 5)
rc2 = RecipeCard.new(u2, r2, 10, 2)
rc3 = RecipeCard.new(u3, r2, 6, 4)
rc4 = RecipeCard.new(u3, r3, 6, 2)
rc5 = RecipeCard.new(u3, r3, 5, 5)
rc6 = RecipeCard.new(u3, r3, 8, 3)

i1 = Ingredient.new('garlic')
i2 = Ingredient.new('salt')
i3 = Ingredient.new('eggs')
i4 = Ingredient.new('peanuts')
i5 = Ingredient.new('avocados')
i6 = Ingredient.new('shellfish')
i7 = Ingredient.new('milk')

a1 = Allergen.new(u1, i1)
a2 = Allergen.new(u1, i2)
a3 = Allergen.new(u3, i1)
a4 = Allergen.new(u2, i1)


ri1 = RecipeIngredient.new(r1, i1)
ri2 = RecipeIngredient.new(r2, i2)
ri3 = RecipeIngredient.new(r3, i3)
ri4 = RecipeIngredient.new(r2, i1)
ri5 = RecipeIngredient.new(r1, i5)







binding.pry
