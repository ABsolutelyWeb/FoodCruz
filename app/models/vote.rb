class Vote < ActiveRecord::Base
  belongs_to :chef
  belongs_to :recipe
  
  # Each chef can only vote once per recipe.
  validates_uniqueness_of :chef, scope: :recipe
end