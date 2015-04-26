class CreateEstablecimientoPlatillos < ActiveRecord::Migration
  def change
    create_table :establecimiento_platillos do |t|
      t.date :introduccion

      t.belongs_to :establecimiento, index: true
      t.belongs_to :platillo, index: true

      t.timestamps
    end
  end
end
