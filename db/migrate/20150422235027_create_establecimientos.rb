class CreateEstablecimientos < ActiveRecord::Migration
  def change
    create_table :establecimientos do |t|
      t.string :direccion
      t.integer :telefono
      t.integer :codpost

      t.timestamps
    end
  end
end
