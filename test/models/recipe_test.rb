require "test_helper"

class RecipeTest < ActiveSupport::TestCase
  def setup
    @recipe = Recipe.new(name: "Vegan Macaroni & Cheese", 
                         summary: "A vegan alternative to one of America's favorite dishes!", 
                         description: "10 ounces dried macaroni (or about 2⅔ cups)
                                       1 cup peeled/diced yellow potatoes (or russets)
                                       1/4 cup peeled/diced carrots
                                       1/3 cup chopped onion
                                       3/4 cup water (preferably use liquid from pot of boiled veggies)
                                       1/2 cup raw cashews
                                       1/4 cup coconut milk
                                       2 tablespoons nutritional yeast flakes
                                       1 tablespoon lemon juice
                                       3/4 to 1 teaspoon salt (or more to taste)
                                       1/4 teaspoon garlic powder
                                       1 pinch cayenne pepper (optional)
                                       1 pinch paprika")
  end
  
  test "recipe validation" do
    assert @recipe.valid?
  end
  
  test "name must be present" do
    @recipe.name = " "
    assert_not @recipe.valid?
  end
  
end