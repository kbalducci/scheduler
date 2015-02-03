class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :age, null: false
      t.date :birthdate, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zipcode, null: false
      t.datetime :appt_time, null: false
      t.text :note
      t.string :importance, null: false

      t.timestamps null: false
    end
  end
end
