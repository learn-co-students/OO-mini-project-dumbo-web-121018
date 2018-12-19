class Ingredient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def allergens
    Allergens.all.select do |allergen|
      allergen.ingredient == self
    end
  end

  def self.most_common_allergen
    Allergen.all.sort_by do |allergen|
      allergen.ingredient.count
    end.last
  end


end
