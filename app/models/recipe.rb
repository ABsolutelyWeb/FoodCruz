class Recipe < ActiveRecord::Base
  # Each recipe would belong to a single chef.
  belongs_to :chef
  
  # Ensure that every recipe has a chef_id so that logged out users cannot create 
  # any recipe entries.
  validates :chef_id, presence: true
  
  # Ensure that each recipe entry has a recipe name of min length 5 and max length 50.
  validates :name, presence: true, length: { minimum: 5, maximum: 50 }
  
  # Ensure that each recipe entry has a recipe summary of min length 10 and max length 200.
  validates :summary, presence: true, length: { minimum: 10, maximum: 200 }
  
  # Ensure that each recipe entry has a recipe description of min length 10 and max length 500.
  validates :description, presence: true, length: { minimum: 10, maximum: 500 }
end