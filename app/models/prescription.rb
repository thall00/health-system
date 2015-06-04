class Prescription < ActiveRecord::Base
  validates_presence_of :medicine, message: "prescription needs a medicine"
  validates_presence_of :dosage, message: "prescription needs a dosage"

  belongs_to :appointment

  def change_dosage dosage
    # adjust the dosage of a prescription
  end

end
