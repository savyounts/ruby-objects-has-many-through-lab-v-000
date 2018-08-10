class Patient 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(date, doctor)
    date = Appointment.new(date, doctor, self)
  end 
  
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
    binding.pry
  end
  
  def doctors 
    self.appointments.collect {|appointment| appointment.doctor}
  end
end