class Medication < ActiveRecord::Base
  # Add validation helpers here
  validates :name, :dosage_amount, :dosage_form, :usage_instructions, :usage_purpose, presence: true
  validates :currently_taking, inclusion: { in: [true, false] }

  # Add associations here
  belongs_to :user
  has_many :reactions

  # Create scopes
  scope :current, -> { where(currently_taking: true) }
  scope :previous, -> { where(currently_taking: false) }
  scope :newest_first, -> { order(start_date: :desc) }
  scope :abc_name, -> { order(:name) }

  # Create slug methods
  def slug
    name.downcase.gsub(" ","-") << "-#{id}"
  end

  def self.find_by_slug(slug)
    self.all.find {|m| m.slug == slug}
  end
end