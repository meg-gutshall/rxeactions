class Reaction < ActiveRecord::Base
  # Add validation helpers here
  validates :title, presence: true

  # Add associations here
  belongs_to :medication
end