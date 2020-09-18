class AddEffectsToPotions < ActiveRecord::Migration[5.2]
  def change
    add_column :potions, :effects, :string
  end
end
