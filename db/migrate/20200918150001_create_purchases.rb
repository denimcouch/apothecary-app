class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.integer :potion_id
      t.integer :adventurer_id
    end
  end
end
