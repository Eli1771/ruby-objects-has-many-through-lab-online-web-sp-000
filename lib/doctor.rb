class Doctor 
  attr_accessor 
  attr_reader :name 
  
  @@all = []
  
  def initialize(name) 
    @name = name 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(patient, date) 
    appt = Appointment.new()
  end 
  def appointments
    Appointment.
end 