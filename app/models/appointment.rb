class Appointment < ActiveRecord::Base
  # validates_presence_of :date, message: "appointment needs a date"
  # validates_presence_of :time, message: "appointment needs a time"

  belongs_to :doctor
  belongs_to :patient
  
  # has_many :prescriptions
  # has_many :operations
  has_many :vitals

  def cancel
    # cancel an existing appointment
  end

  def reschedule
    # change date/time of an existing appointment
  end

  def create
    # schedule a new appointment
  end
  
end
