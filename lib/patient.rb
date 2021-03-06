class Patient 
  attr_reader :name 
  
  @@all = [] 
  
  def initialize(name) 
    @name = name 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
    
  def new_appointment(doctor, date) 
    appt = Appointment.new(date, self, doctor)
  end 
  def appointments 
    Appointment.all.select do |a| 
      a.patient == self
    end 
  end 
  def doctors
    results = []
    appointments.each do |a| 
      results << a.doctor
    end 
    results
  end 
end 