class ChangeAppointmentStartToTimeslot < ActiveRecord::Migration[6.1]
  def change
    rename_column :appointments, :start, :timeslot
  end
end
