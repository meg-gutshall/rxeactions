class Reaction < ActiveRecord::Base
  # Add validation helpers here
  validates :title, presence: true
  # Can you validate either or? Good vs. bad reaction?

  # Add associations here
  belongs_to :medication
end