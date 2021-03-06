class Inspector < ActiveRecord::Base
	has_many :establecimiento_inspectors
	has_many :establecimientos, :through => :establecimiento_inspectors

	validates :institucion, presence: true, length: {minimum: 5, maximum: 40}
	validates :departamento, presence: true, length: {minimum: 5, maximum: 40}

	validates :nombre, presence: true, length:{minimum: 3, maximum: 40}
	
	validates :telefono, presence: true
	validates_numericality_of :telefono, 
	:greater_than_or_equal_to => 0, 
	:less_than_or_equal_to => 99999999,
	:message => "Entre un teléfono válido"

	def self.search(query)
    where("institucion like ?", "%#{query}%") 
  	end
end
