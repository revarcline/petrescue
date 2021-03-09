class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  validate :date_six_months_from_now
  validate :time_within_business_hours

  private

  def date_six_months_from_now
    unless start.future? && start < Date.current + 6.months
      errors.add(:start, "of appointment must be within next six months.")
    end
  end

end
