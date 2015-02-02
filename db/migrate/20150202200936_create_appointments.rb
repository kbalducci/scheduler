class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.date :birthdate
      t.string :city
      t.string :state
      t.string :zipcode
      t.datetime :appt_time
      t.text :note
      t.string :importance

      t.timestamps null: false
    end
  end
end
