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
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end

  def self.most_common_allergen
    @@all.sort_by do |ingredient|
      ingredient.allergens.count
    end.last
  end

end
