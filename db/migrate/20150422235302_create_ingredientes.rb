class CreateIngredientes < ActiveRecord::Migration
  def change
    create_table :ingredientes do |t|
      t.string :nombre
      t.float :precio

      t.timestamps
    end
  end
end
