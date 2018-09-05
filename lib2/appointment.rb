# rspec spec/05_appointment_spec.rb
class Appointment 
  attr_accessor :date
  attr_reader :patient, :doctor
  @@all = []

  def self.all 
    @@all 
  end
  
  def initialize(patient,doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date 
    @@all << self
  end

end 