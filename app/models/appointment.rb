class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  validates :start, inclusion: { in: (Date.current+1.day..Date.current+6.months) }
  validates_uniqueness_of :start, scope: :pet
  
  def self.upcoming
    Appointment.where('start > ?', DateTime.current)
  end
end
