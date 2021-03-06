class Appointment < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :age, :birthdate,
                        :city, :state, :zipcode, :appt_time, :importance
  validates_uniqueness_of :appt_time,
                          message: "This time is not available, please pick another time"
  validates :age, numericality: { greater_than: 21}
  validates :importance, inclusion: { in: %w(High Low None)}
  validates :zipcode, length: { is: 5 }

  scope :by_state, ->  { where(state: 'Texas') }
  scope :by_age, -> { order(age: :desc) }
end
