class CreateSucursals < ActiveRecord::Migration[5.2]
  def change
    create_table :sucursals do |t|
      t.string :sucursal_name
      t.string :sucursal_add
      t.string :zip_code
      t.integer :user_id

      t.timestamps
    end
  end
end
