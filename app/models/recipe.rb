class Recipe < ActiveRecord::Base
  # Each recipe would belong to a single chef.
  belongs_to :chef
  
  # Recipes can have many votes, but only one vote per recipe per chef.
  has_many :votes
  
  # Ensure that every recipe has a chef_id so that logged out users cannot create 
  # any recipe entries.
  validates :chef_id, presence: true
  
  # Ensure that each recipe entry has a recipe name of min length 5 and max length 50.
  validates :name, presence: true, length: { minimum: 5, maximum: 50 }
  
  # Ensure that each recipe entry has a recipe summary of min length 10 and max length 200.
  validates :summary, presence: true, length: { minimum: 10, maximum: 200 }
  
  # Ensure that each recipe entry has a recipe description of min length 10 and max length 500.
  validates :description, presence: true, length: { minimum: 10, maximum: 500 }
  
  mount_uploader :picture, PictureUploader
  
  validate :picture_size
  
  def positive_votes
    self.votes.where(vote: true).size
  end
  
  def negative_votes
    self.votes.where(vote: false).size
  end
  
  # When active record communicates with database, the below line specifies
  # to only pick up what it is specifying which is to display recipes by most
  # recent on top.
  default_scope -> { order(updated_at: :desc) }
  
  private
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "Image must be less than 5 mb.")
      end
    end
end