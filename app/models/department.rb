class Department < ActiveRecord::Base
  validates_presence_of :name, message: "department needs a name"

  belongs_to :hospital
  has_many :doctors

end
