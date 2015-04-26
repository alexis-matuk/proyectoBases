class CreateIngredientePlatillos < ActiveRecord::Migration
  def change
    create_table :ingrediente_platillos do |t|

      t.belongs_to :ingrediente, index: true
      t.belongs_to :platillo, index: true

      t.timestamps
    end
  end
end
