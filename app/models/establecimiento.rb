class Establecimiento < ActiveRecord::Base
	has_many :empleados
	has_many :reportes

	has_many :establecimiento_proveedors
	has_many :proveedors through :establecimiento_proveedors

	has_many :establecimiento_inspectors
	has_many :inspectors through :establecimiento_inspectors

	has_many :establecimiento_platillos
	has_many :platillos through :establecimiento_platillos

end
