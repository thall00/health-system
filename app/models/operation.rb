class Operation < ActiveRecord::Base
  validates_presence_of :description, message: "operation needs a description"

  belongs_to :appointment
  
end
