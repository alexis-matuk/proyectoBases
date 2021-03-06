class Proveedor < ActiveRecord::Base


	has_many :ingredientes, :dependent => :delete_all
	has_many :establecimiento_proveedors
	has_many :establecimientos, :through => :establecimiento_proveedors

	validates :nombre, presence: true, length:{minimum: 3, maximum: 40}
	validates :email, presence: true, length:{minimum: 3, maximum: 40}
	
	validates :telefono, presence: true
	validates_numericality_of :telefono, 
	:greater_than_or_equal_to => 0, 
	:less_than_or_equal_to => 99999999,
	:message => "Entre un teléfono válido"

	validates :representante, presence: true, length:{minimum: 3, maximum: 40}

	def self.search(query)
    where("nombre like ?", "%#{query}%") 
  end
end
