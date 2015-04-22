class CreateProveedors < ActiveRecord::Migration
  def change
    create_table :proveedors do |t|
      t.string :nombre
      t.string :email
      t.integer :telefono
      t.string :representante

      t.timestamps
    end
  end
end
