# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Doctor.destroy_all
Patient.destroy_all
City.destroy_all
Appointment.destroy_all

25.times do 
    doctor = Doctor.create(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, specialty: Faker::TvShows::GameOfThrones.house, zip_code: Faker::Number.between(from: 10000, to: 93000))
end

100.times do
    patient = Patient.create(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name)
end

50.times do
    city = City.create(city_name: Faker::Address.city)
end

150.times do
    appointment = Appointment.create(date: Faker::Date.in_date_period(month: 2), city: City.all.sample, patient: Patient.all.sample, doctor: Doctor.all.sample)
end