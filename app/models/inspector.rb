class Inspector < ActiveRecord::Base
	has_many :establecimiento_inspectors
	has_many :establecimientos, :through => :establecimiento_inspectors
end
