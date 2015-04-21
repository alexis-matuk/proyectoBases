class CreateEmpleado < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
    	t.string :nombre
    	t.string :cargo
    	t.date :contratacion
    end
  end
end
