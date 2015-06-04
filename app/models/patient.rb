class Patient < ActiveRecord::Base
  # validates_presence_of :first_name, message: "patient needs a first name"
  # validates_presence_of :last_name, message: "patient needs a last name"
  # validates_presence_of :street_address, message: "patient needs a street address"
  # validates_presence_of :city, message: "patient needs a city"
  # validates_presence_of :state, message: "patient needs a state"
  # validates_presence_of :zip, message: "patient needs a zip code"

  has_many :appointments
  has_many :doctors, through: :appointments
  
end
