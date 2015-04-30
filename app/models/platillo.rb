class Platillo < ActiveRecord::Base

	has_many :establecimiento_platillos
	has_many :establecimientos, :through => :establecimiento_platillos

	has_many :ingrediente_platillos
	has_many :ingredientes, :through => :ingrediente_platillos

	validates :nombre, presence: true, length: {minimun:3, maximum: 40}
	validates :descripcion, presence: true, length: {maximum:10, maximum:300}
	
	validates :precio, presence: true
	validates_numericality_of :precio, 
	:greater_than_or_equal_to => 0, 
	:less_than_or_equal_to => 99999999,
	:message => "Entrada inválida"

	def self.search(query)
    where("nombre like ?", "%#{query}%") 
  	end
end
