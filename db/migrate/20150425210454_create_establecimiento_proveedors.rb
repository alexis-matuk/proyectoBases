class CreateEstablecimientoProveedors < ActiveRecord::Migration
  def change
    create_table :establecimiento_proveedors do |t|
      t.belongs_to :establecimiento, index: true
      t.belongs_to :proveedor, index: true

      t.timestamps
    end
  end
end
