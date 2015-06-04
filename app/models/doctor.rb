class Doctor < ActiveRecord::Base
  # validates_presence_of :first_name, message: "doctor needs a first name"
  # validates_presence_of :last_name, message: "doctor needs a last name"

  #belongs_to :department

  has_many :appointments
  has_many :patients, through: :appointments
  
  def transfer
    # change the department for a doctor
  end

  def quit
    # destroy this doctor's record
  end

end
