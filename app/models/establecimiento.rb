class Establecimiento < ActiveRecord::Base
	has_many :empleados, :dependent => :delete_all
	has_many :reportes, :dependent => :delete_all

	has_many :establecimiento_proveedors, :dependent => :delete_all
	has_many :proveedors, :through => :establecimiento_proveedors

	has_many :establecimiento_inspectors, :dependent => :delete_all
	has_many :inspectors, :through => :establecimiento_inspectors

	has_many :establecimiento_platillos, :dependent => :delete_all
	has_many :platillos, :through => :establecimiento_platillos

	validates :direccion, presence: true, length:{minimum: 5, maximum:40}
	validates :telefono, presence: true
	validates :codpost, presence: true

	

end
