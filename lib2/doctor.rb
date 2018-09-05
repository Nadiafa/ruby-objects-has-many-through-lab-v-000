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
  
  def new_appointment(doctor, date)
    Patient.new_appointment(self, date)
  end
  
  def appointments
    Appointment.all.select { |a| a.doctor == self}
  end
  
  def patients
    appointments.map { |a| a.patient }
  end
end 