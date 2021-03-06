class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.integer :pet_id
      t.integer :user_id
      t.datetime :start

      t.timestamps
    end
  end
end
