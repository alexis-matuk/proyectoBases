class CreateReporte < ActiveRecord::Migration
  def change
    create_table :reportes do |t|
    	t.float :ingreso
    	t.integer :clientes
    	t.timestamp
    end
  end
end
