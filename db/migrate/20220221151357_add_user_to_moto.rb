class AddUserToMoto < ActiveRecord::Migration[6.1]
  def change
    add_reference :motos, :user, null: false, foreign_key: true
  end
end
