class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  validates :timeslot, inclusion: { in: (Date.current+1.day..Date.current+6.months), message: 'must be tomorrow or later.'}
  validates_uniqueness_of :timeslot, {scope: :pet, message: 'is booked.'}
  
  def self.upcoming
    Appointment.where('timeslot > ?', DateTime.current)
  end
end
