class Pet < ApplicationRecord
  has_many :appointments
  has_many :users, through: :appointments
  
  validates :name, presence: true
  validates :species, presence: true
  validate :species_title_case
  
  private

  def species_title_case
    unless species == species.capitalize
      errors.add(:species, "species must be title case (eg. 'Dog')")
    end
  end

end
