# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Apprentice.destroy_all
User.destroy_all
Placement.destroy_all

user16 = User.create(email: 'email16@email.com', password: '123456', role: "agency")

user17 = User.create(email: 'email17@email.com', password: '123456', role: "agency")

user18 = User.create(email: 'email18@email.com', password: '123456', role: "agency")

user19 = User.create(email: 'email19@email.com', password: '123456', role: "agency")

user20 = User.create!(email: 'email20@email.com', password: '123456', role: "agency")

user1 = User.create(email: 'email@email.com', password: '123456', role: "apprentice")
apprentice1 = Apprentice.new(first_name: 'John', last_name: 'Doe')
apprentice1.user = user1
apprentice1.agency = user16
apprentice1.save

user2 = User.create(email: 'email2@email.com', password: '123456', role: "apprentice")
apprentice2 = Apprentice.new(first_name: 'Johna', last_name: 'Doea')
apprentice2.user = user2
apprentice2.agency = user17
apprentice2.save

user3 = User.create(email: 'email3@email.com', password: '123456', role: "apprentice")
apprentice3 = Apprentice.new(first_name: 'Johnb', last_name: 'Doeb')
apprentice3.user = user3
apprentice3.agency = user18
apprentice3.save

user4 = User.create(email: 'email4@email.com', password: '123456', role: "apprentice")
apprentice4 = Apprentice.new(first_name: 'Johnc', last_name: 'Doec')
apprentice4.user = user4
apprentice4.agency = user19
apprentice4.save

user5 = User.create(email: 'email5@email.com', password: '123456', role: "apprentice")
apprentice5 = Apprentice.new(first_name: 'Johnd', last_name: 'Doed')
apprentice5.user = user5
apprentice5.agency = user20
apprentice5.save

user6 = User.create(email: 'email6@email.com', password: '123456', role: "host_validator", company_name: "London1, Inc")


user7 = User.create(email: 'email7@email.com', password: '123456', role: "host_validator", company_name: "London2, Inc")


user8 = User.create(email: 'email8@email.com', password: '123456', role: "host_validator", company_name: "London3, Inc")


user9 = User.create(email: 'email9@email.com', password: '123456', role: "host_validator", company_name: "London4, Inc")


user10 = User.create(email: 'email10@email.com', password: '123456', role: "host_validator", company_name: "London5, inc")


user11 = User.create(email: 'email11@email.com', password: '123456', role: "host_invoice_contact")


user12 = User.create(email: 'email12@email.com', password: '123456', role: "host_invoice_contact")


user13 = User.create(email: 'email13@email.com', password: '123456', role: "host_invoice_contact")


user14 = User.create(email: 'email14@email.com', password: '123456', role: "host_invoice_contact")


user15 = User.create(email: 'email15@email.com', password: '123456', role: "host_invoice_contact")


placement1 = Placement.create!(apprentice: apprentice1, host_validator: user6, host_invoice_contact: user11, pl_start_date: Date.yesterday, pl_end_date: Date.tomorrow, address: 'London', interview_date: Date.yesterday, hourly_rate: 7)

placement2 = Placement.create!(apprentice: apprentice2, host_validator: user7, host_invoice_contact: user12, pl_start_date: Date.yesterday, pl_end_date: Date.tomorrow, address: 'London', interview_date: Date.yesterday, hourly_rate: 7)

placement3 = Placement.create!(apprentice: apprentice3, host_validator: user8, host_invoice_contact: user13, pl_start_date: Date.yesterday, pl_end_date: Date.tomorrow, address: 'London', interview_date: Date.yesterday, hourly_rate: 7)

placement4 = Placement.create!(apprentice: apprentice4, host_validator: user9, host_invoice_contact: user14, pl_start_date: Date.yesterday, pl_end_date: Date.tomorrow, address: 'London', interview_date: Date.yesterday, hourly_rate: 7)

placement5 = Placement.create!(apprentice: apprentice5, host_validator: user10, host_invoice_contact: user15, pl_start_date: Date.yesterday, pl_end_date: Date.tomorrow, address: 'London', interview_date: Date.yesterday, hourly_rate: 7)

placement6 = Placement.create!(apprentice: apprentice5, host_validator: user10, host_invoice_contact: user15, pl_start_date: '10/05/2018', pl_end_date: Date.tomorrow, address: 'London', interview_date: '9/12/2017', hourly_rate: 7)

