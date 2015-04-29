class Reporte < ActiveRecord::Base
	belongs_to :establecimiento

	validates :fecha, presence: true

	validates :clientes, presence: true
	validates_numericality_of :clientes, 
	:greater_than_or_equal_to => 0, 
	:less_than_or_equal_to => 99999999,
	:message => "Entrada inválida"

	validates :ingreso, presence: true
	validates_numericality_of :ingreso, 
	:greater_than_or_equal_to => 0, 
	:less_than_or_equal_to => 99999999,
	:message => "Entrada inválida"

	validates :establecimiento_id, presence: true

	validate :validate_establecimiento_id


  def validate_establecimiento_id
    errors.add(:establecimiento_id, "is invalid") unless Establecimiento.exists?(self.establecimiento_id)
  end
end
