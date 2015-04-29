class Reporte < ActiveRecord::Base
	belongs_to :establecimiento

	validates :fecha, presence: true
	validates :clientes, presence: true
	validates :ingreso, presence: true
	validates :establecimiento_id, presence: true

	validate :validate_establecimiento_id


  def validate_establecimiento_id
    errors.add(:establecimiento_id, "is invalid") unless Establecimiento.exists?(self.establecimiento_id)
  end
end
