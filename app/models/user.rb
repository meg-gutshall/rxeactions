class User < ActiveRecord::Base
  # ActiveRecord macro to go along with the 'bcrypt' gem
  has_secure_password
  
  # Add validations here


  # Add associations here
  has_many :medications
  has_many :reactions, through: :medications
end