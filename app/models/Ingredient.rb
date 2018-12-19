
class Ingredient

  @@all = []

  def initialize(name=nil)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def all_allergens
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end

  def self.most_common_allergen
    hash1 = Allergen.all.each_with_object(Hash.new(0)) do |allergen, hash|
      hash[allergen.ingredient] += 1
    end
    hash1.max_by {|key, value| value}[0]
  end
end
