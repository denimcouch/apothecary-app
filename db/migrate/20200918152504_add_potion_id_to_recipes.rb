class AddPotionIdToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :potion_id, :integer
  end
end
