class CreatePlatillo < ActiveRecord::Migration
  def change
    create_table :platillos do |t|
    	t.string :nombre
    	t.text :descripcion
    	t.float :precio
    end
  end
end
