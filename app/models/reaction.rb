class Reaction < ActiveRecord::Base
  # Add validations here


  # Add associations here
  belongs_to :medication
  # Some sort of User association?
end