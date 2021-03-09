class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  validates :start, inclusion: { in: (Date.current..Date.current+6.months) }

end
