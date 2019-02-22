class Medication < ActiveRecord::Base
  # Add validation helpers here
  validates :name, :dosage_amount, :dosage_form, :usage_instructions, :ailment_treated, presence: true
  validates :currently_taking, inclusion: { in: [true, false] }

  # Add associations here
  belongs_to :user
  has_many :reactions

  # Create slug methods
  def slug
    name.downcase.gsub(" ","-") << "-#{id}"
  end

  def self.find_by_slug(slug)
    self.all.find {|m| m.slug == slug}
  end
end