class Platillo < ActiveRecord::Base

	has_many :establecimiento_platillos, :dependent => :delete_all
	has_many :establecimientos, :through => :establecimiento_platillos

	has_many :ingrediente_platillos, :dependent => :delete_all
	has_many :ingredientes, :through => :ingrediente_platillos

	validates :nombre, presence: true, length: {minimun:3, maximum: 40}
	validates :descripcion, presence: true, length: {maximum:10, maximum:300}
	validates :precio, presence: true


end
