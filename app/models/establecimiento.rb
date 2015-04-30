class Establecimiento < ActiveRecord::Base
	has_many :empleados, :dependent => :delete_all
	has_many :reportes, :dependent => :delete_all

	has_many :establecimiento_proveedors
	has_many :proveedors, :through => :establecimiento_proveedors

	has_many :establecimiento_inspectors
	has_many :inspectors, :through => :establecimiento_inspectors

	has_many :establecimiento_platillos
	has_many :platillos, :through => :establecimiento_platillos

	validates :direccion, presence: true, length:{minimum: 5, maximum:40}

	validates :telefono, presence: true
	validates_numericality_of :telefono, 
	:greater_than_or_equal_to => 0, 
	:less_than_or_equal_to => 99999999,
	:message => "Entre un teléfono válido"


	validates :codpost, presence: true
	validates_numericality_of :codpost, 
	:greater_than_or_equal_to => 0, 
	:less_than_or_equal_to => 99999,
	:message => "Entre un código postal válido"

	def self.search(query)
    where("direccion like ?", "%#{query}%") 
  end

end
