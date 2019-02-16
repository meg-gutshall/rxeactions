class Medication < ActiveRecord::Base
  # Add validations here


  # Add associations here
  has_many :reactions
  belongs_to :user
end