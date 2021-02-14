class Dog
  def initialize(name, breed, age, bark, favorite_foods)
    @name = name
    @breed = breed
    @age = age
    @bark = bark
    @favorite_foods = favorite_foods
  end

  def name
    @name
  end

  def breed
    @breed
  end

  def age
    @age
  end

  def favorite_foods
    @favorite_foods
  end

  def age=(age)
    @age = age
  end

  def bark
    if age > 3
      return @bark.upcase
    else
      return @bark.downcase
    end
  end

  def favorite_food?(food)
    favorite_foods.map(&:downcase).include?(food.downcase)
  end
end


# dog = Dog.new("Fido", "German Shepard", 3, "Bork!", ["Bacon", "Chicken"])
# dog.favorite_food?("bacon")
