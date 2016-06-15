class RecipeVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :vote
      t.integer :chef_id, :recipe_id
      t.timestamps
    end
  end
end
