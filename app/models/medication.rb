class Medication < ActiveRecord::Base
  # Add validations here


  # Add associations here
  belongs_to :user
  has_many :reactions
end