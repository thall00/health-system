class Hospital < ActiveRecord::Base
  validates_presence_of :name, message: "hospital needs a name"
  validates_presence_of :street_address, message: "hospital needs a street adress"
  validates_presence_of :city, message: "hospital needs a city"
  validates_presence_of :state, message: "hospital needs a state"
  validates_presence_of :zip, message: "hospital needs a zip"

  has_many :department
  
end
