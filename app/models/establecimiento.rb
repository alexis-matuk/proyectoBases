class Establecimiento < ActiveRecord::Base
	has_many :empleados
	has_many :reportes
	has_many :establecimiento_proveedors
	has_many :proveedors through :establecimiento_proveedors
end
