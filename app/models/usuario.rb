class Usuario < ActiveRecord::Base
  validates :nombre, presence: true
  validates :apellido, presence: true
  validates :login, presence: true, uniqueness: true
  #validates :clave, presence: true, length: {minimum: 6,maximum: 12}
  validates :correo, presence: true, uniqueness: true, format: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_secure_password

	def self.authenticate(email = '', password = '')
		user = find_by('correo = :mail or login = :mail', mail: email)
		user && user.authenticate(password)
	end
end
