class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :date
      t.text :notes
      t.integer :patient_id, foreign_key: true
      t.integer :doctor_id, foreign_key: true

      t.timestamps
    end
  end
end
