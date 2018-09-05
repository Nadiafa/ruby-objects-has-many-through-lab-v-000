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
    Appointment.new(date, self, patient)
  end
  
  def appointments
    Appointment.all.select { |a| a.doctor == self }
  end
  
  def patients
    appointments.map { |a| a.patient }
  end
end 

# class Artist 
  
#   def new_song(name, genre)
#     Song.new(name, self, genre)
#   end

#   def songs
#     Song.all.select {|song| song.artist == self}
#   end

#   def genres
#     songs.map { |song| song.genre  }
#   end
  
# end