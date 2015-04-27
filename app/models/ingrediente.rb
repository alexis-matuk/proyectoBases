class Ingrediente < ActiveRecord::Base
	belongs_to :proveedor, :dependent => :destroy 

	has_many :ingrediente_platillos, :dependent => :delete_all
	has_many :platillos, :through => :ingrediente_platillos
end
