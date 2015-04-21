class CreateInspector < ActiveRecord::Migration
  def change
    create_table :inspectors do |t|
    	t.string :institucion
    	t.string :departamento
    	t.integer :telefono
    end
  end
end
