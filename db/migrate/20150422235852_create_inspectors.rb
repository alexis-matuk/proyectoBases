class CreateInspectors < ActiveRecord::Migration
  def change
    create_table :inspectors do |t|
      t.string :nombre
      t.string :institucion
      t.string :departamento
      t.integer :telefono

      t.timestamps
    end
  end
end
