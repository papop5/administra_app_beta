class Apartamento < ActiveRecord::Base
	has_many :vehiculos  #relacion de uno a muchos
	has_many :residentes

	validates :numero, presence: true, uniqueness: true
	validates :torre, presence: true
	validates :piso, presence: true
	validates :area, numericality: {greater_than_or_equal_to: 0}

	def valor_administracion
		area * 2300
	end
end