class Reaction < ActiveRecord::Base
  # Add validation helpers here
  validates :title, :reaction_detail, :current, presence: true

  # Add associations here
  belongs_to :medication
end