class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :cargo
      t.date :contratacion
      t.float :salario

      t.timestamps
    end
  end
end
