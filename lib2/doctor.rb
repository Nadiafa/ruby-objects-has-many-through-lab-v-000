# rspec spec/04_doctor_spec.rb
class Doctor 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  
  
end 