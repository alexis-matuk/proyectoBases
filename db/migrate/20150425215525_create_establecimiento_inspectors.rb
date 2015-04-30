class CreateEstablecimientoInspectors < ActiveRecord::Migration
  def change
    create_table :establecimiento_inspectors do |t|
      t.string :nombre
      t.date :fecha

      t.belongs_to :establecimiento, index: true
      t.belongs_to :inspector, index: true

      t.timestamps
    end
  end
end
