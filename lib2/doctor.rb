# rspec spec/04_doctor_spec.rb
class Doctor 
  attr_accessor :name 
  @@all = []
  
  def self.all 
    @@all 
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(date, patient)
    Appointment.new(patient, self, date)
  end
  
  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end
  
  def patients
    appointments.map { |appointment| appointment.patient }
  end
end 