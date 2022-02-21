class CreateMotos < ActiveRecord::Migration[6.1]
  def change
    create_table :motos do |t|
      t.string :name
      t.string :brand
      t.string :address
      t.boolean :available
      t.integer :power
      t.integer :kilometers

      t.timestamps
    end
  end
end
