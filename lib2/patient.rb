# rspec spec/06_patient_spec.rb
class Patient 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  end 
  
  def new_appointment(doctor, date)
    Appointment.new()
  end 
  
end 
