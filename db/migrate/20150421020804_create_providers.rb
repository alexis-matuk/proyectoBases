class CreateProvider < ActiveRecord::Migration
  def change
    create_table :providers do |t|
    	t.string :nombre
    	t.string :email
    	t.integer :telefono
    	t.string :representante
    end
  end
end
