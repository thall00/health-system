class Vital < ActiveRecord::Base
  # no validations in case certain vitals are not recorded at an appointment
  belongs_to :appointment
end
