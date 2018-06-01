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

user16 = User.create!(email: 'email16@email.com', password: '123456', role: "Employment Agency", first_name: "Susie1", last_name: "Derbya", company_name: "Cie.", phone_number: "0123456789", address: "London")

user17 = User.create!(email: 'email17@email.com', password: '123456', role: "Employment Agency", first_name: "Susie2", last_name: "Derbyb", company_name: "Cie.", phone_number: "0123456789", address: "London")

user18 = User.create!(email: 'email18@email.com', password: '123456', role: "Employment Agency", first_name: "Susie3", last_name: "Derbyc", company_name: "Cie.", phone_number: "0123456789", address: "Bristol")

user19 = User.create!(email: 'email19@email.com', password: '123456', role: "Employment Agency", first_name: "Susie4", last_name: "Derbyd", company_name: "Cie.", phone_number: "0123456789", address: "Canterbury")

user20 = User.create!(email: 'email20@email.com', password: '123456', role: "Employment Agency", first_name: "Susie5", last_name: "Derbye", company_name: "Cie.", phone_number: "0123456789", address: "Somewhere")

user1 = User.create!(address: 'London', email: 'email@email.com', password: '123456', role: "Apprentice",first_name: 'John', last_name: 'Doe')
apprentice1 = Apprentice.new(trade: 'carpenter' , skills: 'wood', borough: 'Hackney', personal_statement: 'Good with hammer', app_start_date: '31/05/2018', app_end_date: '31/06/2018', college_day: 'Monday', hourly_rate_cents: 7)
apprentice1.user = user1
apprentice1.agency = user16
apprentice1.save

user2 = User.create!(address: 'London', email: 'email2@email.com', password: '123456', role: "Apprentice", first_name: 'Johna', last_name: 'Doea')
apprentice2 = Apprentice.new(trade: 'carpenter' , skills: 'wood', borough: 'Hackney', personal_statement: 'Good with hammer', app_start_date: '31/04/2018', app_end_date: '31/05/2018', college_day: 'Monday', hourly_rate_cents: 7)
apprentice2.user = user2
apprentice2.agency = user16
apprentice2.save

user3 = User.create!(address: 'London', email: 'email3@email.com', password: '123456', role: "Apprentice", first_name: 'Johnb', last_name: 'Doeb')
apprentice3 = Apprentice.new(trade: 'carpenter' , skills:'wood', borough: 'Hackney', personal_statement: 'Good with hammer', app_start_date: '31/06/2018', app_end_date: '31/07/2018', college_day: 'Monday', hourly_rate_cents: 7)
apprentice3.user = user3
apprentice3.agency = user18
apprentice3.save

user4 = User.create!(address: 'London', email: 'email4@email.com', password: '123456', role: "Apprentice", first_name: 'Johnc', last_name: 'Doec')
apprentice4 = Apprentice.new(trade: 'carpenter' , skills:'wood', borough: 'Hackney', personal_statement: 'Good with hammer', app_start_date: '31/02/2018', app_end_date: '31/05/2018', college_day: 'Monday', hourly_rate_cents: 7)
apprentice4.user = user4
apprentice4.agency = user19
apprentice4.save

user5 = User.create!(address: 'London', email: 'email5@email.com', password: '123456', role: "Apprentice", first_name: 'Johnd', last_name: 'Doed')
apprentice5 = Apprentice.new(trade: 'carpenter' , skills:'wood', borough: 'Hackney', personal_statement: 'Good with hammer', app_start_date: '31/06/2018', app_end_date: '31/08/2018', college_day: 'Monday', hourly_rate_cents: 7)
apprentice5.user = user5
apprentice5.agency = user20
apprentice5.save

user6 = User.create!(email: 'email6@email.com', password: '123456', role: "Host Company (Timesheet Validation)", company_name: "London1, Inc", first_name: "Guy1", last_name: "Rolanda", phone_number: "0132456789", address: "London")


user7 = User.create!(email: 'email7@email.com', password: '123456', role: "Host Company (Timesheet Validation)", company_name: "London2, Inc", first_name: "Guy2", last_name: "Rolandb", phone_number: "0132456789", address: "Bristol")


user8 = User.create!(email: 'email8@email.com', password: '123456', role: "Host Company (Timesheet Validation)", company_name: "London3, Inc", first_name: "Guy3", last_name: "Rolandc", phone_number: "0132456789", address: "Manchester")


user9 = User.create!(email: 'email9@email.com', password: '123456', role: "Host Company (Timesheet Validation)", company_name: "London4, Inc", first_name: "Guy4", last_name: "Rolandd", phone_number: "0132456789", address: "Doncaster")


user10 = User.create!(email: 'email10@email.com', password: '123456', role: "Host Company (Timesheet Validation)", company_name: "London5, inc", first_name: "Guy5", last_name: "Rolande", phone_number: "0132456789", address: "Surrey")


user11 = User.create!(email: 'email11@email.com', password: '123456', role: "Host Company (Invoicing)", first_name: "Paul1", last_name: "Randa", phone_number: "0132456789", address: "London", company_name: "London1, Inc",)


user12 = User.create!(email: 'email12@email.com', password: '123456', role: "Host Company (Invoicing)", first_name: "Paul2", last_name: "Randb", phone_number: "0132456789", address: "Bristol", company_name: "London2, Inc",)


user13 = User.create!(email: 'email13@email.com', password: '123456', role: "Host Company (Invoicing)", first_name: "Paul3", last_name: "Randc", phone_number: "0132456789", address: "Manchester", company_name: "London3, Inc",)


user14 = User.create!(email: 'email14@email.com', password: '123456', role: "Host Company (Invoicing)", first_name: "Paul4", last_name: "Randd", phone_number: "0132456789", address: "Doncaster", company_name: "London4, Inc",)


user15 = User.create!(email: 'email15@email.com', password: '123456', role: "Host Company (Invoicing)", first_name: "Paul5", last_name: "Rande", phone_number: "0132456789", address: "Surrey", company_name: "London5, Inc",)


placement1 = Placement.create!(apprentice: apprentice1, host_validator: user6, host_invoice_contact: user12, pl_start_date: '01/06/2018', pl_end_date: '01/07/2018', address: 'London', interview_date: '31/05/2018', hourly_rate: 7)
placement1a = Placement.create!(apprentice: apprentice1, host_validator: user7, host_invoice_contact: user13, pl_start_date: '01/05/2018', pl_end_date: '30/05/2018', address: 'London', interview_date: '30/04/2018', hourly_rate: 7.5)
placement1b = Placement.create!(apprentice: apprentice1, host_validator: user8, host_invoice_contact: user11, pl_start_date: '15/05/2018', pl_end_date: '10/06/2018', address: 'London', interview_date: '10/05/2018', hourly_rate: 7)
placement1c = Placement.create!(apprentice: apprentice1, host_validator: user8, host_invoice_contact: user11, pl_start_date: '15/06/2018', pl_end_date: '31/07/2018', address: 'London', interview_date: '10/06/2018', hourly_rate: 7)
placement1d = Placement.create!(apprentice: apprentice1, host_validator: user8, host_invoice_contact: user11, pl_start_date: '15/04/2018', pl_end_date: '30/04/2018', address: 'London', interview_date: '10/04/2018', hourly_rate: 7)

placement2 = Placement.create!(apprentice: apprentice2, host_validator: user7, host_invoice_contact: user12, pl_start_date: '10/05/2018', pl_end_date: '06/09/2018', address: 'London', interview_date: '09/05/2018', hourly_rate: 8)

placement3 = Placement.create!(apprentice: apprentice3, host_validator: user8, host_invoice_contact: user13, pl_start_date: '01/05/2018', pl_end_date: '10/05/2018', address: 'London', interview_date: '01/05/2018', hourly_rate: 9)

placement4 = Placement.create!(apprentice: apprentice4, host_validator: user9, host_invoice_contact: user14, pl_start_date: '03/02/2018', pl_end_date: '09/05/2018', address: 'London', interview_date: '10/01/2018', hourly_rate: 7)

placement5 = Placement.create!(apprentice: apprentice5, host_validator: user10, host_invoice_contact: user15, pl_start_date: '02/04/2018', pl_end_date: '11/05/2018', address: 'London', interview_date: '10/03/2018', hourly_rate: 10)

placement6 = Placement.create!(apprentice: apprentice5, host_validator: user10, host_invoice_contact: user15, pl_start_date: '10/05/2018', pl_end_date: '10/07/2018', address: 'London', interview_date: '9/12/2017', hourly_rate: 6)
placement6 = Placement.create!(apprentice: apprentice5, host_validator: user10, host_invoice_contact: user15, pl_start_date: '10/08/2018', pl_end_date: '31/08/2018', address: 'London', interview_date: '12/12/2017', hourly_rate: 7)

