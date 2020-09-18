class CreateAdventurers < ActiveRecord::Migration[5.2]
  def change
    create_table :adventurers do |t|
      t.string :name
      t.string :role
    end
  end
end
