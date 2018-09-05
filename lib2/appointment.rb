# rspec spec/05_appointment_spec.rb
class Appointment 
  attr_accessor :date, :doctor, :patient
  @@all = []

  def self.all 
    @@all 
  end
  
  def initialize(date,doctor, patient)
    @patient = patient
    @doctor = doctor
    @date = date 
    @@all << self
  end

end 


# class Song 
#   attr_accessor :name, :artist, :genre
#   @@all = []
  
#   def initialize(name, artist, genre)
#     @name = name
#     @artist = artist
#     @genre = genre
#     @@all << self 
#   end
  
#   def self.all 
#     @@all
#   end 

# end