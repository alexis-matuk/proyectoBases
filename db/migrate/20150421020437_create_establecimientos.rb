class CreateEstablecimiento < ActiveRecord::Migration
  def change
    create_table :establecimientos do |t|
    	t.string :direccion
    	t.integer :telefono
    	t.integer :codPost
    end
  end
end
