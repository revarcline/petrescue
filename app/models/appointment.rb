class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  validate :six_months_from_now

  private

  def six_months_from_now
    unless start.future? && start < Date.current + 6.months
      errors.add(:start, "Appointment must be within next six months.")
    end
  end

end
