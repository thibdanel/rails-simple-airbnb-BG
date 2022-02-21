class AddPriceToMotos < ActiveRecord::Migration[6.1]
  def change
    add_column :motos, :price, :integer
  end
end
