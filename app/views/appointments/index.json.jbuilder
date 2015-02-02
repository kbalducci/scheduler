json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :first_name, :last_name, :age, :birthdate, :city, :state, :zipcode, :appt_time, :note, :importance
  json.url appointment_url(appointment, format: :json)
end
