class AddEstablecimientoIdToReporte < ActiveRecord::Migration
  def change
  	add_column :reportes, :establecimiento_id, :integer
  end
end
