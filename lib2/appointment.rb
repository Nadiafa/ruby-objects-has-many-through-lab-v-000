# rspec spec/05_appointment_spec.rb
class Appointment 
  attr_accessor :date, :doctor, :patient
  @@all = []

  def self.all 
    @@all 
  end
  
  def initialize(date, doctor, patient)
    @patient = patient
    @doctor = doctor
    @date = date 
    @@all << self
  end

end 