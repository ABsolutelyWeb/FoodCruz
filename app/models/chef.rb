class Chef < ActiveRecord::Base
  # A chef can/would have many recipes.
  has_many :recipes
  
  # We don't want to have the duiplicate emails stored in the database with different upper/lowercase
  # entries so we downcase them to ensure uniqueness.
  before_save { self.email = email.downcase }
  
  # Ensure that each chef entry has a chef name of min length 5 and max length 50.
  validates :chefname, presence: true, length: { minimum: 5, maximum: 50 }
  
  # Create a format for emails to follow.
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  # Ensure that each chef entry has a unique (non-case sensitive) chef email of min length 10 and max length 100.
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }, length: { minimum: 5, maximum: 100 }
end