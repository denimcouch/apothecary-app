class CreatePotions < ActiveRecord::Migration[5.2]
  def change
    create_table :potions do |t|
      t.string :name
      t.string :price
    end
  end
end
