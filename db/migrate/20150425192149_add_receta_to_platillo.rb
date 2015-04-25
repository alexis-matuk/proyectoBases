class AddRecetaToPlatillo < ActiveRecord::Migration
  def change
  	add_column :platillos,:receta, :text
  end
end
