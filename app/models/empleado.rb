class Empleado < ActiveRecord::Base
	belongs_to :establecimiento
	validates :nombre, presence: true, length:{minimum: 3, maximum:40}
  	validates :cargo, presence: true, length: {minimum: 5, maximum: 40}
 	validates :contratacion, presence: true
 	validates :salario, presence: true
 	validates :establecimiento_id, presence: true

 	validate :validate_establecimiento_id


	def validate_establecimiento_id
	errors.add(:establecimiento_id, "is invalid") unless Establecimiento.exists?(self.establecimiento_id)
  end
end
