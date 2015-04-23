class AddEstablecimientoIdToEmpleado < ActiveRecord::Migration
  def change
  	add_column :empleados, :establecimiento_id, :integer 
  end
end
