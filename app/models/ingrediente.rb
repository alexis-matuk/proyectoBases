class Ingrediente < ActiveRecord::Base
	belongs_to :proveedor

	has_many :ingrediente_platillos
	has_many :platillos through :ingrediente_platillos
end
