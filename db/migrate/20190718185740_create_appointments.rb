class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :date
      t.text :notes
      t.integer :patient_id
      t.integer :doctor_id

      t.timestamps
    end
  end
end
