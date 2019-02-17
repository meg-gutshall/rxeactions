class Medication < ActiveRecord::Base
  # Add validation helpers here
  validates :name, :dosage_amount, :dosage_form, :usage_instructions, :ailment_treated, presence: true

  # Add associations here
  belongs_to :user
  has_many :reactions
end