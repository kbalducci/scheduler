class Appointment < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :age, :birthdate,
                        :city, :state, :zipcode, :appt_time, :importance
  validates_uniqueness_of :appt_time
  validates :age, numericality: { greater_than: 21}
  validates :importance, inclusion: { in: %w(High Low None)}
end
