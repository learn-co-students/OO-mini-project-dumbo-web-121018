
class RecipeCard

  @@all = []
  attr_reader :user, :recipe, :date, :rating


  def initialize(user, recipe, rating=nil, date=nil)
    @user = user
    @recipe = recipe
    @rating = rating
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

end
