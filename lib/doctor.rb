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
    appt = Appointment.new(date, patient, self)
  end 
  def appointments
    Appointment.all.select do |a| 
      a.doctor == self
    end 
  end 
  def patients 
    results = []
    appointments.each.do |a| 
      results << a.patients
    end 
    results
  end 
end 