# rspec spec/06_patient_spec.rb
class Patient 
  attr_accessor :name 
  @@all = []
  
  def self.all
    @@all 
  end 
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def appointments
    Appointment.all.select { |a| a.appointment == self }
  end 
  
  def doctors
    appointments.map { |a| a.doctor }
  end
end 