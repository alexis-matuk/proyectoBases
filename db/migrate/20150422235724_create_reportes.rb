class CreateReportes < ActiveRecord::Migration
  def change
    create_table :reportes do |t|
      t.datetime :fecha
      t.integer :clientes
      t.float :ingreso

      t.timestamps
    end
  end
end
