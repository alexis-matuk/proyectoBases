class EstablecimientoInspector < ActiveRecord::Base

	validates :fecha, presence: true
end
