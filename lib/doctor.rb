class Doctor 
  attr_accessor 
  attr_reader :name 
  
  @@all = []
  
  def initialize(name) 
    @name = name 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(patient, date) 
    appt = Appointment.new()
  end 
  def appointments
    Appointment.all.select do |a| 
      
    end 
  end 
  def patients 
    appointments.each.do |a| 
      
    end 
  end 
end 