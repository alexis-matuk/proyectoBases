class Proveedor < ActiveRecord::Base
	has_many :ingredientes, :dependent => :delete_all
	has_many :establecimiento_proveedors, :dependent => :delete_all
	has_many :establecimientos, :through => :establecimiento_proveedors
end
