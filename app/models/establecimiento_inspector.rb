class EstablecimientoInspector < ActiveRecord::Base

	validates :nombre, presence: true, length:{minimum: 3, maximum: 40}
	validates :fecha, presence: true
end
