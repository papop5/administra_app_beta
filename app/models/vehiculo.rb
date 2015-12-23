class Vehiculo < ActiveRecord::Base
  belongs_to :apartamento #relacion de uno a uno

  validates :placa, presence: true, uniqueness: true
  validates :color, presence: true
  validates :marca, presence: true
  validates :descripcion, length: {maximum: 50}


end
