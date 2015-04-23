class AddProveedorIdToIngrediente < ActiveRecord::Migration
  def change
  	add_column :ingredientes, :proveedor_id, :integer
  end
end
