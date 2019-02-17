class User < ActiveRecord::Base
  # ActiveRecord macro to go along with the 'bcrypt' gem
  has_secure_password
  
  # Add validation helpers here
  validates :email, :password, :name, :birth_date, presence: true
  validates :email, on: :create, uniqueness: { case_sensitive: false, message: "An account has already been made with this email address." }
  validates :password, length: { in: 6..20 }

  # Add associations here
  has_many :medications
  has_many :reactions, through: :medications
end