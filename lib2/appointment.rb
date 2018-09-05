# rspec spec/05_appointment_spec.rb
class Appointment 
  attr_accessor :date, :doctor, :patient
  @@all = []

  def self.all 
    @@all 
  end
  
  def initialize(date, doctor, patient)
    @date = date 
    @doctor = doctor
    @patient = patient
    @@all << self
  end

end 