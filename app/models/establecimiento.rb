class Establecimiento < ActiveRecord::Base
	has_many :empleados
	has_many :reportes
end
