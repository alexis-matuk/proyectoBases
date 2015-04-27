class Inspector < ActiveRecord::Base
	has_many :establecimiento_inspectors, :dependent => :delete_all
	has_many :establecimientos, :through => :establecimiento_inspectors
end
