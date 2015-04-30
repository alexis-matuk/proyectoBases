class ForeignKeyConstraint < ActiveRecord::Migration
  def change
  	execute "ALTER TABLE establecimiento_proveedors DROP COLUMN  id;"
  	execute "ALTER TABLE establecimiento_proveedors ADD PRIMARY KEY (establecimiento_id, proveedor_id);"
  end
end
