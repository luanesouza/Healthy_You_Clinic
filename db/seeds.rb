# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Appointment.destroy_all
Doctor.destroy_all
Patient.destroy_all

doc1 = Doctor.create(name: "Ana Jimmy", specialty: "Psychology")
patient1 = Patient.create(name: "Maria", age: "30 years old")
patient2 = Patient.create(name: "Ana", age: "35 years old")
patient2 = Patient.create(name: "John", age: "20 years old")
patient2 = Patient.create(name: "Rita", age: "25 years old")
patient2 = Patient.create(name: "Lily", age: "10 years old")

Appointment.create(
  [{
    date: "July 1st",
    notes: "I reversed the polarity of the neutron flow. I've reversed the polarity of the Neutron flow, so the TARDIS should be free from the force field now. Death is always more frightening when it strikes invisibly.",
    doctor_id: doc1.id,
    patient_id: patient1.id,
    },
    {
    date: "July 2nd",
    notes: "I reversed the polarity of the neutron flow. I've reversed the polarity of the Neutron flow, so the TARDIS should be free from the force field now. Death is always more frightening when it strikes invisibly.",
    doctor_id: doc1.id,
    patient_id: patient1.id,
  },
  {
    date: "July 21st",
    notes: "I reversed the polarity of the neutron flow. I've reversed the polarity of the Neutron flow, so the TARDIS should be free from the force field now. Death is always more frightening when it strikes invisibly.",
    doctor_id: doc1.id,
    patient_id: patient1.id,
    },
    {
    date: "July 22nd",
    notes: "I reversed the polarity of the neutron flow. I've reversed the polarity of the Neutron flow, so the TARDIS should be free from the force field now. Death is always more frightening when it strikes invisibly.",
    doctor_id: doc1.id,
    patient_id: patient1.id,
  },]
  )
