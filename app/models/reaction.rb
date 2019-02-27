class Reaction < ActiveRecord::Base
  # Add validation helpers here
  validates :title, :reaction_detail, presence: true

  # Add associations here
  belongs_to :medication
end