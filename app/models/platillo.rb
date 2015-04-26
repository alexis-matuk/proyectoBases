class Platillo < ActiveRecord::Base

	has_many :establecimiento_platillos
	has_many :establecimientos, :through => :establecimiento_platillos

	has_many :ingrediente_platillos
	has_many :ingredientes, :through => :ingrediente_platillos
end
