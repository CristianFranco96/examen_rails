class CreateEmpleados < ActiveRecord::Migration[5.2]
  def change
    create_table :empleados do |t|
      t.string :empleado_name
      t.string :empleado_rfc
      t.string :empleado_puesto
      t.integer :id_sucursal

      t.timestamps
    end
  end
end
