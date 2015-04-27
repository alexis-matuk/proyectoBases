class Inspector < ActiveRecord::Base
	has_many :establecimiento_inspectors, :dependent => :delete_all
	has_many :establecimientos, :through => :establecimiento_inspectors

	validates :institucion, presence: true, length: {minimum: 5, maximum: 40}
	validates :departamento, presence: true, length: {minimum: 5, maximum: 40}
	validates :telefono, presence: true, :numericality => {:less_than_or_equal_to => Establecimiento.count, :greater_than =>0 }
end
