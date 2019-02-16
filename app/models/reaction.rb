class Reaction < ActiveRecord::Base
  # Add validations here


  # Add associations here
  belongs_to :medication, include: :user
end