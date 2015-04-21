class CreateIngrediente < ActiveRecord::Migration
  def change
    create_table :ingredientes do |t|
    	t.string :nombre
    	t.text :descripcion
    	t.float :precio
    end
  end
end
