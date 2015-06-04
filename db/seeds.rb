# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

homer_simpson = Patient.create name: "Homer Simpson"
ned_flanders = Patient.create name: "Ned Flanders"
ralph_wiggum = Patient.create name: "Ralph Wiggum"

doctor_hibbert = Doctor.create name: "Doctor Hibbert"
doctor_nick = Doctor.create name: "Doctor Nick"


appointment_1 = Appointment.create appointment_date: '2009-01-01 00:00:00', patient: homer_simpson, doctor: doctor_nick
appointment_2 = Appointment.create appointment_date: '2010-03-15 00:00:00', patient: homer_simpson, doctor: doctor_nick
appointment_3 = Appointment.create appointment_date: '2010-08-15 00:00:00', patient: homer_simpson, doctor: doctor_nick
appointment_4 = Appointment.create appointment_date: '2010-08-15 00:00:00', patient: ned_flanders, doctor: doctor_hibbert
appointment_5 = Appointment.create appointment_date: '2011-09-01 00:00:00', patient: ned_flanders, doctor: doctor_nick
appointment_6 = Appointment.create appointment_date: '2011-10-04 00:00:00', patient: ned_flanders, doctor: doctor_hibbert
appointment_7 = Appointment.create appointment_date: '2010-04-15 00:00:00', patient: ralph_wiggum, doctor: doctor_hibbert
appointment_8 = Appointment.create appointment_date: '2010-10-31 00:00:00', patient: ralph_wiggum, doctor: doctor_hibbert
appointment_9 = Appointment.create appointment_date: '2015-03-02 00:00:00', patient: ralph_wiggum, doctor: doctor_hibbert

vital_1 = Vital.create pulse: 65, bp_systolic: 110, bp_diastolic: 75, height: 72, weight: 240, oxygen_level: 96, appointment: appointment_1
vital_2 = Vital.create pulse: 82, bp_systolic: 105, bp_diastolic: 78, height: 72, weight: 240, oxygen_level: 98, appointment: appointment_2
vital_3 = Vital.create pulse: 81, bp_systolic: 99, bp_diastolic: 99, height: 72, weight: 240, oxygen_level: 97, appointment: appointment_3
vital_4 = Vital.create pulse: 82, bp_systolic: 105, bp_diastolic: 78, height: 69, weight: 195, oxygen_level: 98, appointment: appointment_4
vital_5 = Vital.create pulse: 82, bp_systolic: 99, bp_diastolic: 78, height: 69, weight: 195, oxygen_level: 98, appointment: appointment_5
vital_6 = Vital.create pulse: 77, bp_systolic: 115, bp_diastolic: 72, height: 69, weight: 195, oxygen_level: 98, appointment: appointment_6
vital_7 = Vital.create pulse: 78, bp_systolic: 130, bp_diastolic: 65, height: 45, weight: 140, oxygen_level: 98, appointment: appointment_7
vital_8 = Vital.create pulse: 55, bp_systolic: 125, bp_diastolic: 90, height: 45, weight: 140, oxygen_level: 98, appointment: appointment_8
vital_9 = Vital.create pulse: 60, bp_systolic: 111, bp_diastolic: 105, height: 45, weight: 140, oxygen_level: 98, appointment: appointment_9


#appointment = Appointment.create date: "01/01/15", time: "2:25PM", patient: patient_1


#appointment_1 = Appointment.create(date: "01/01/15", time: "2:25PM", patient: patient_1)



# Appointment.create ({
#   patient_id: patient_1.id
#   appointment_id: appointment_1.id
# }, without_protection: true)


