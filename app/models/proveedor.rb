class Proveedor < ActiveRecord::Base
	has_many :ingredientes
	has_many :establecimiento_proveedors
	has_many :establecimientos, :through => :establecimiento_proveedors
end
