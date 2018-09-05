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
  
  def new_appointment(date, doctor)
    Appointment.new(self, doctor, date)
  end
  
  def appointments
    Appointment.all.select { |a| a.appointment == self }
  end 
  
  def doctors
    appointments.map { |a| a.doctor }
  end
end 

