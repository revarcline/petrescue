class Pet < ApplicationRecord
  include ActionView::Helpers::DateHelper

  has_many :appointments
  has_many :users, through: :appointments

  has_one_attached :photo

  validates :name, presence: true
  validates :species, presence: true
  validate :species_title_case

  def age
    distance_of_time_in_words(birthdate, Date.current)
  end

  def self.oldest
    Pet.order(:birthdate).first
  end

  private

  def species_title_case
    errors.add(:species, "species must be title case (eg. 'Dog')") unless species == species.capitalize
  end
end
