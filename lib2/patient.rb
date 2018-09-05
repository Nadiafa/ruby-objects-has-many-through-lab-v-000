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
  
  def new_appointment(doctor, date)
    Appointment.new(date, doctor, self)
  end 
  
  def appointments
    Appointment.all.select { |a| a.appointment == self }
  end 
  
  def doctors
    appointments.map { |a| a.doctor }
  end
end 

# class Genre
#   attr_accessor :name
#   @@all = []
 
#   def self.all
#     @@all 
#   end 
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
#   def songs
#     Song.all{|song| song.genre == self}
#   end
#   def artists
#     songs.map{|song| song.artist}
#   end
# end