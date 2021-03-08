class Pet < ApplicationRecord
  include ActionView::Helpers::DateHelper

  has_many :appointments
  has_many :users, through: :appointments
  
  validates :name, presence: true
  validates :species, presence: true
  validate :species_title_case

  def age
    distance_of_time_in_words(self.birthdate, Date.current)
  end
  
  private

  def species_title_case
    unless species == species.capitalize
      errors.add(:species, "species must be title case (eg. 'Dog')")
    end
  end

end
