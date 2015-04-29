class Ingrediente < ActiveRecord::Base
	belongs_to :proveedor, :dependent => :destroy 

	has_many :ingrediente_platillos
	has_many :platillos, :through => :ingrediente_platillos

	validates :nombre, presence: true, length:{minimum: 3, maximum: 40}
	validates :precio, presence: true
	# validates :proveedor_id, presence: true

	# validate :validate_proveedor_id


	# def validate_proveedor_id
	# errors.add(:proveedor_id, "is invalid") unless Proveedor.exists?(self.proveedor_id)
 #  end
end
